class Artifact < ApplicationRecord
  before_save :upload_to_s3
  belongs_to :project
  attr_accessor :upload
  
  MAX_FILESIZE = 10.megabytes
  
  validates_presence_of :name, :upload
  validates_uniqueness_of :name
  validate :uploaded_file_size
  
  def uploaded_file_size
    if upload
      errors.add(:upload, "File size must be less than #{self.class::MAX_FILESIZE}") unless upload.size <= self.class::MAX_FILESIZE
    end
  end

  def upload_to_s3
    # s3 = Aws::S3::Resource.new(region:'ap-south-1', access_key_id: '<%= ENV['AWS_ACCESS_KEY_ID'] %>', secret_access_key: '<%= ENV['AWS_SECRET_ACCESS_KEY'] %>')
    # tenant_name = Tenant.find(Thread.current[:tenant_id]).name
    # obj = s3.bucket('rails-saas-project').object("#{tenant_name}/#{upload.original_filename}")
    # obj.upload_file(upload.path, acl:'public-read')
    # self.key = obj.public_url
    self.key = 'www.google.com'
  end

end
