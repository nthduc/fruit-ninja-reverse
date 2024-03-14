.class public Lcom/chartboost/sdk/impl/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/telephony/TelephonyManager;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 19
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 4

    if-eqz p1, :cond_13

    :try_start_2
    const-string v0, "phone"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 3
    const-class v0, Lcom/chartboost/sdk/Chartboost;

    const-string v1, "Unable to retrieve TELEPHONY_SERVICE "

    invoke-static {v0, v1, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/c1;
    .registers 11

    .line 1
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/d1;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const-string p1, "CarrierBuilder"

    const-string v0, "Permission READ_PHONE_STATE not granted"

    .line 2
    invoke-static {p1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_f
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/d1;->b(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/d1;->a(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 8
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 12
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v0

    move-object v5, v1

    goto :goto_32

    :cond_30
    move-object v4, v1

    move-object v5, v4

    .line 15
    :goto_32
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    .line 18
    new-instance p1, Lcom/chartboost/sdk/impl/c1;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/chartboost/sdk/impl/c1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_46

    :cond_45
    move-object p1, v1

    :goto_46
    return-object p1
.end method
