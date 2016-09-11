/*
   Copyright (c) 2016, The CyanogenMod Project

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#include <stdio.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

void vendor_load_properties()
{
    std::string platform;
    std::string radio;
    std::string device;

    platform = property_get("ro.board.platform");
    if (platform != ANDROID_TARGET)
        return;

    property_set("ro.product.model", "Moto E");
    radio = property_get("ro.boot.radio");
    if (radio == "0x1") {
        /* xt1021 */
        property_set("ro.product.device", "condor_umts");
        property_set("ro.build.product", "condor_umts");
        property_set("ro.build.description", "condor_reteu-user 5.1 LPC23.13-34.8 9 release-keys");
        property_set("ro.build.fingerprint", "motorola/condor_reteu/condor_umts:5.1/LPC23.13-34.8/9:user/release-keys");
        property_set("ro.mot.build.customerid", "reteu");
        property_set("ro.telephony.default_network", "0");
        property_set("persist.radio.multisim.config", "");
    } else if (radio == "0x5") {
        /* xt1022 */
        property_set("ro.product.device", "condor_umtsds");
        property_set("ro.build.product", "condor_umtsds");
        property_set("ro.build.description", "condor_retaildsds-user 5.1 LPC23.13-34.8 12 release-keys");
        property_set("ro.build.fingerprint", "motorola/condor_retaildsds/condor_umtsds:5.1/LPC23.13-34.8/12:user/release-keys");
        property_set("ro.mot.build.customerid", "retaildsdsall");
        property_set("ro.telephony.default_network", "0,1");
        property_set("ro.telephony.ril.config", "simactivation,sim2gsmonly");
        property_set("persist.radio.multisim.config", "dsds");
        property_set("persist.radio.dont_use_dsd", "true");
        property_set("persist.radio.plmn_name_cmp", "1");
    } else if (radio == "0x6") {
        /* xt1023 */
        property_set("ro.product.device", "condor_umts");
        property_set("ro.build.product", "condor_umts");
        property_set("ro.build.description", "condor_retuaws-user 5.1 LPC23.13-34.8 9 release-keys");
        property_set("ro.build.fingerprint", "motorola/condor_retuaws/condor_umts:5.1/LPC23.13-34.8/9:user/release-keys");
        property_set("ro.mot.build.customerid", "retusa_aws");
        property_set("ro.telephony.default_network", "0");
        property_set("persist.radio.multisim.config", "");
    }
    device = property_get("ro.product.device");
    INFO("Found radio id: %s setting build properties for %s device\n", radio.c_str(), device.c_str());
}
