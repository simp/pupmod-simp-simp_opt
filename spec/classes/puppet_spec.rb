require 'spec_helper'

describe 'simp_options' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|

      context "on #{os}" do
        let(:facts){ facts }

        context 'invalid simp_options::puppet::server' do
          let(:hieradata) { 'simp_options_with_invalid_puppet_server'}
          it { is_expected.not_to compile.with_all_deps}
        end

        context 'invalid simp_options::puppet::ca' do
          let(:hieradata) { 'simp_options_with_invalid_puppet_ca'}
          it { is_expected.not_to compile.with_all_deps}
        end
      end
    end
  end
end
