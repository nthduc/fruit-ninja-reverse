.class public Lcom/chartboost/sdk/Libraries/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "ContentValues"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 4
    :try_start_6
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/chartboost/sdk/impl/x;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_e} :catch_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_15
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_6 .. :try_end_e} :catch_f
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_6 .. :try_end_e} :catch_20

    goto :goto_21

    :catch_f
    const-string p1, "There was a recoverable error connecting to Google Play Services."

    .line 10
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :catch_15
    const-string p1, "The connection to Google Play Services failed."

    .line 11
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :catch_1b
    const-string p1, "This should have been called off the main thread."

    .line 12
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :catch_20
    :goto_20
    move-object p1, v1

    :goto_21
    if-nez p1, :cond_29

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/chartboost/sdk/Libraries/a;->a:I

    .line 22
    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    goto :goto_3e

    .line 23
    :cond_29
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 p1, 0x1

    .line 24
    iput p1, p0, Lcom/chartboost/sdk/Libraries/a;->a:I

    .line 25
    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    goto :goto_3e

    :cond_35
    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/chartboost/sdk/Libraries/a;->a:I

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    :goto_3e
    return-void
.end method
