.class public Lcom/google/android/gms/nearby/messages/NearbyMessagesStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final APP_NOT_OPTED_IN:I = 0xaf2

.field public static final APP_QUOTA_LIMIT_REACHED:I = 0xaf4

.field public static final BLE_ADVERTISING_UNSUPPORTED:I = 0xb05

.field public static final BLE_SCANNING_UNSUPPORTED:I = 0xb06

.field public static final BLUETOOTH_OFF:I = 0xb04

.field public static final DISALLOWED_CALLING_CONTEXT:I = 0xaf3

.field public static final FORBIDDEN:I = 0xaf6

.field public static final MISSING_PERMISSIONS:I = 0xaf7

.field public static final NOT_AUTHORIZED:I = 0xaf5

.field public static final TOO_MANY_PENDING_INTENTS:I = 0xaf1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xaf5

    if-eq p0, v0, :cond_28

    const/16 v0, 0xaf6

    if-eq p0, v0, :cond_25

    packed-switch p0, :pswitch_data_2c

    packed-switch p0, :pswitch_data_36

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_13
    const-string p0, "BLE_SCANNING_UNSUPPORTED"

    return-object p0

    :pswitch_16
    const-string p0, "BLE_ADVERTISING_UNSUPPORTED"

    return-object p0

    :pswitch_19
    const-string p0, "BLUETOOTH_OFF"

    return-object p0

    :pswitch_1c
    const-string p0, "DISALLOWED_CALLING_CONTEXT"

    return-object p0

    :pswitch_1f
    const-string p0, "APP_NOT_OPTED_IN"

    return-object p0

    :pswitch_22
    const-string p0, "TOO_MANY_PENDING_INTENTS"

    return-object p0

    :cond_25
    const-string p0, "FORBIDDEN"

    return-object p0

    :cond_28
    const-string p0, "NOT_AUTHORIZED"

    return-object p0

    nop

    :pswitch_data_2c
    .packed-switch 0xaf1
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch

    :pswitch_data_36
    .packed-switch 0xb04
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method
