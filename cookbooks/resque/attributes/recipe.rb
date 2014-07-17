
queues({
  :all => {
    :groupa => {
      :inventory => [
        :cloning,
        :inventory,
        :inventory,
        :schedule,
        :notification
      ]
    },
    :groupb => {
      :pub => [
        :publication,
        :publication,
        :publication,
        :publication
      ]
    },
    :groupc => {
      :perf => [
        :performance_aggregation
        :performance_download,
        :performance_import
      ]
    },
    :groupd => {
      :gen_campaign => [
        [:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
        [:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
        [:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
        [:gen_campaign,:gen_ad_group,:gen_keyword,:gen_ad,:gen_vendor_instance],
      ],
      :gen_ad_group => [
        [:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
        [:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
        [:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
        [:gen_ad_group,:gen_keyword,:gen_ad,:gen_campaign,:gen_vendor_instance],
      ],
      :gen_ad => [
        [:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
        [:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
        [:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
        [:gen_ad,:gen_ad_group,:gen_keyword,:gen_campaign,:gen_vendor_instance],
      ],
      :gen_keyword => [
        [:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
        [:gen_keyword,:gen_ad,:gen_ad_group,:gen_campaign,:gen_vendor_instance],
      ]
    },
    :group_develop => {
      :gen_campaign => [ :gen_campaign ],
      :gen_ad_group => [ :gen_ad_group ],
      :gen_ad => [ :gen_ad ],
      :gen_keyword => [ :gen_keyword ],
      :inventory => [:inventory, :schedule, :cloning, :notification ],
    }
  }
})

