.class public final Lcom/google/android/gms/nearby/connection/ConnectionsStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final API_CONNECTION_FAILED_ALREADY_IN_USE:I = 0x1f72

.field public static final MISSING_PERMISSION_ACCESS_COARSE_LOCATION:I = 0x1f62

.field public static final MISSING_PERMISSION_ACCESS_WIFI_STATE:I = 0x1f60

.field public static final MISSING_PERMISSION_BLUETOOTH:I = 0x1f5e

.field public static final MISSING_PERMISSION_BLUETOOTH_ADMIN:I = 0x1f5f

.field public static final MISSING_PERMISSION_CHANGE_WIFI_STATE:I = 0x1f61

.field public static final MISSING_PERMISSION_RECORD_AUDIO:I = 0x1f63

.field public static final MISSING_SETTING_LOCATION_MUST_BE_ON:I = 0x1f59
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_ALREADY_ADVERTISING:I = 0x1f41

.field public static final STATUS_ALREADY_CONNECTED_TO_ENDPOINT:I = 0x1f43

.field public static final STATUS_ALREADY_DISCOVERING:I = 0x1f42

.field public static final STATUS_ALREADY_HAVE_ACTIVE_STRATEGY:I = 0x1f48

.field public static final STATUS_BLUETOOTH_ERROR:I = 0x1f47

.field public static final STATUS_CONNECTION_REJECTED:I = 0x1f44

.field public static final STATUS_ENDPOINT_IO_ERROR:I = 0x1f4c

.field public static final STATUS_ENDPOINT_UNKNOWN:I = 0x1f4b

.field public static final STATUS_ERROR:I = 0xd

.field public static final STATUS_NETWORK_NOT_CONNECTED:I = 0x1f40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATUS_NOT_CONNECTED_TO_ENDPOINT:I = 0x1f45

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OUT_OF_ORDER_API_CALL:I = 0x1f49

.field public static final STATUS_PAYLOAD_IO_ERROR:I = 0x1f4d


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x1f59

    if-eq p0, v0, :cond_55

    const/16 v0, 0x1f72

    if-eq p0, v0, :cond_52

    packed-switch p0, :pswitch_data_58

    packed-switch p0, :pswitch_data_68

    packed-switch p0, :pswitch_data_7c

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16
    const-string p0, "MISSING_PERMISSION_RECORD_AUDIO"

    return-object p0

    :pswitch_19
    const-string p0, "MISSING_PERMISSION_ACCESS_COARSE_LOCATION"

    return-object p0

    :pswitch_1c
    const-string p0, "MISSING_PERMISSION_CHANGE_WIFI_STATE"

    return-object p0

    :pswitch_1f
    const-string p0, "MISSING_PERMISSION_ACCESS_WIFI_STATE"

    return-object p0

    :pswitch_22
    const-string p0, "MISSING_PERMISSION_BLUETOOTH_ADMIN"

    return-object p0

    :pswitch_25
    const-string p0, "MISSING_PERMISSION_BLUETOOTH"

    return-object p0

    :pswitch_28
    const-string p0, "STATUS_PAYLOAD_UNKNOWN"

    return-object p0

    :pswitch_2b
    const-string p0, "STATUS_PAYLOAD_IO_ERROR"

    return-object p0

    :pswitch_2e
    const-string p0, "STATUS_ENDPOINT_IO_ERROR"

    return-object p0

    :pswitch_31
    const-string p0, "STATUS_ENDPOINT_UNKNOWN"

    return-object p0

    :pswitch_34
    const-string p0, "STATUS_UNSUPPORTED_PAYLOAD_TYPE_FOR_STRATEGY"

    return-object p0

    :pswitch_37
    const-string p0, "STATUS_OUT_OF_ORDER_API_CALL"

    return-object p0

    :pswitch_3a
    const-string p0, "STATUS_ALREADY_HAVE_ACTIVE_STRATEGY"

    return-object p0

    :pswitch_3d
    const-string p0, "STATUS_BLUETOOTH_ERROR"

    return-object p0

    :pswitch_40
    const-string p0, "STATUS_NOT_CONNECTED_TO_ENDPOINT"

    return-object p0

    :pswitch_43
    const-string p0, "STATUS_CONNECTION_REJECTED"

    return-object p0

    :pswitch_46
    const-string p0, "STATUS_ALREADY_CONNECTED_TO_ENDPOINT"

    return-object p0

    :pswitch_49
    const-string p0, "STATUS_ALREADY_DISCOVERING"

    return-object p0

    :pswitch_4c
    const-string p0, "STATUS_ALREADY_ADVERTISING"

    return-object p0

    :pswitch_4f
    const-string p0, "STATUS_NETWORK_NOT_CONNECTED"

    return-object p0

    :cond_52
    const-string p0, "API_CONNECTION_FAILED_ALREADY_IN_USE"

    return-object p0

    :cond_55
    const-string p0, "MISSING_SETTING_LOCATION_MUST_BE_ON"

    return-object p0

    :pswitch_data_58
    .packed-switch 0x1f40
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x1f47
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x1f5e
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
    .end packed-switch
.end method
