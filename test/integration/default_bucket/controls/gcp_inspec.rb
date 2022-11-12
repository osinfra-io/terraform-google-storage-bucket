# Chef InSpec
# https://www.chef.io/inspec

# Since this is the default test, we want to test as much as possible here and not be redundant in the other tests.

bucket_name = input('bucket_name')

control 'storage_bucket' do
  title 'Storage Bucket'

  # Storage Bucket
  # https://docs.chef.io/inspec/resources/google_storage_bucket/

  describe google_storage_bucket(name: bucket_name) do
    it { should exist }
    its('encryption.default_kms_key_name') do
      should eq nil
    end
    its('location') { should eq 'US' }
    its('storage_class') { should eq 'STANDARD' }
    its('versioning.enabled') { should eq true }
  end
end
