class EntryIndicator < ActiveRecord::Base
  include PublicActivity::Common
#  tracked owner: ->(controller, model) { controller && controller.current_user }

  resourcify
#  has_many :entry_indicator_sources

  has_many :metrics, through: :indicator_metrics
  has_many :indicators, through: :indicator_metrics
#  has_many :sources, through: :entry_indicator_sources

  belongs_to :indicator_metric
  belongs_to :indicator_source
  belongs_to :unit, inverse_of: :entry_indicators

  validates_presence_of :unit

  validates_associated :indicator_metric
  validates_associated :indicator_source

  validates_numericality_of :amount


  scope :period, ->(id) { where(period_id: id) }

  def amount=(val)
    val.sub!(',', '.') if val.is_a?(String)
    self['amount'] = val
  end

  def self.delete_by_indicator_metric(unit_id, indicator_metric_id)
    self.where(unit_id: unit_id, indicator_metric_id: indicator_metric_id).delete_all
  end

  def self.by_period_unit_and_source(period, unit, source)
    entry_indicators = where(period_id: period, unit_id: unit)
    ei = entry_indicators.map{ |ei| ei if ei.source?(source) }
    return ei
  end

  def self.create_from_import(data)
    entry_indicator = EntryIndicator.new()
    entry_indicator.period_id =  data["period_id"]
    entry_indicator.unit_id =  data["unit_id"]
    entry_indicator.indicator_metric_id =  data["indicator_metric"]
    entry_indicator.amount =  data["amount"]
    entry_indicator.imported_amount =  data["imported_amount"]
    entry_indicator.updated_by =  data["updated_by"]

    entry_indicator
  end

  def source?(source)
     source.include?(self.indicator_metric.indicator_sources.take.source.id.to_s)
  end

  def description
    indicator_metric.indicator.item.description + '/' + indicator_metric.metric.item.description + ', ' +
        indicator_metric.indicator.period.description + ', ' + unit.description_sap
  end
end
