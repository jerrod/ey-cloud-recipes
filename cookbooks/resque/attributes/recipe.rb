
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
       # temporary so we dont lose jobs during deployment
       # delete monday (june 16 2014)
      :gen => [ :generation, :vendor_instance ],
      :pub => [
        :publication,
        :publication,
        :publication,
        :publication
      ]
    },
    :groupc => {
      :perf => [
        :performance_aggregation,
        :performance_download,
        :performance_import
      ]
    },
    :groupd => {
      :gen_campaign => [
        :gen_campaign,
        :gen_campaign,
        :gen_campaign,
        :gen_vendor_instance
      ],
      :gen_ad_group => [
        :gen_ad_group,
        :gen_ad_group,
        :gen_ad_group,
        :gen_vendor_instance
      ],
      :gen_ad => [
        :gen_ad,
        :gen_ad,
        :gen_ad,
        :gen_vendor_instance
      ],
      :gen_keyword => [
        :gen_keyword,
        :gen_keyword,
        :gen_keyword,
        :gen_vendor_instance
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

