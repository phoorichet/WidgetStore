class Widget < ActiveRecord::Base
  attr_accessible :name, :user_id, :source, :version

  belongs_to :user
  validates :user_id, presence: true

  has_attached_file :source,
    :storage => :s3,
    :bucket => 'cmu.ljy.practicum',
    :s3_headers => {"Content-Disposition" => "attachment"},
    :s3_credentials => {
      :access_key_id => "AKIAI2OOQPXZZ7USH2VA",
      :secret_access_key => "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"
    },
    :url => ':s3_domain_url',
    :path => '/:class/:attachment/:id_partition/:style/:filename',
    :s3_host_name => 's3-us-west-1.amazonaws.com'
end
