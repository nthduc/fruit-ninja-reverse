.class Lcom/adcolony/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ObsoleteSdkInt"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/j$d;
    }
.end annotation


# static fields
.field private static i:I = 0x2

.field static final j:Ljava/lang/String; = "Production"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lorg/json/JSONObject;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/adcolony/sdk/j;->a:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/j;->e:Lorg/json/JSONObject;

    const-string v1, "android"

    .line 13
    iput-object v1, p0, Lcom/adcolony/sdk/j;->f:Ljava/lang/String;

    const-string v1, "android_native"

    .line 14
    iput-object v1, p0, Lcom/adcolony/sdk/j;->g:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/adcolony/sdk/j;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/j;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/j;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/adcolony/sdk/j;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/adcolony/sdk/j;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method A()I
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_8

    return v1

    .line 5
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_19

    if-eq v0, v1, :cond_18

    return v1

    :cond_18
    return v2

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method B()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method C()Ljava/lang/String;
    .registers 2

    const-string v0, "4.2.4"

    return-object v0
.end method

.method D()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    const-string v2, "phone"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_14

    goto :goto_18

    .line 6
    :cond_14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    :goto_18
    return-object v1
.end method

.method E()I
    .registers 4

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const-wide/16 v1, 0xf

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    return v0
.end method

.method F()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method G()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method H()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/adcolony/sdk/j;->c:Z

    .line 2
    new-instance v0, Lcom/adcolony/sdk/j$a;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/j$a;-><init>(Lcom/adcolony/sdk/j;)V

    const-string v1, "Device.get_info"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 33
    new-instance v0, Lcom/adcolony/sdk/j$b;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/j$b;-><init>(Lcom/adcolony/sdk/j;)V

    const-string v1, "Device.application_exists"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    return-void
.end method

.method I()Z
    .registers 7

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v3

    .line 6
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v3, v0

    mul-float v2, v2, v2

    mul-float v3, v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_2d

    const/4 v1, 0x1

    :cond_2d
    return v1
.end method

.method J()V
    .registers 2

    .line 1
    new-instance v0, Lcom/adcolony/sdk/j$c;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/j$c;-><init>(Lcom/adcolony/sdk/j;)V

    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a()Ljava/lang/String;
    .registers 3

    const-string v0, "os.arch"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-static {p1}, Lcom/adcolony/sdk/k0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method a(Z)Lorg/json/JSONObject;
    .registers 7

    .line 7
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "carrier_name"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/h;->v()Lcom/adcolony/sdk/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/g0;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_path"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->f()I

    move-result v2

    const-string v3, "device_api"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 12
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->r()I

    move-result v2

    const-string v3, "display_width"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 13
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->q()I

    move-result v2

    const-string v3, "display_height"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 14
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->r()I

    move-result v2

    const-string v3, "screen_width"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 15
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->q()I

    move-result v2

    const-string v3, "screen_height"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 16
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->p()I

    move-result v2

    const-string v3, "display_dpi"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 17
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_type"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->s()Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale_language_code"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 19
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->s()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ln"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale_country_code"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 22
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->v()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mac_address"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->w()Ljava/lang/String;

    move-result-object v2

    const-string v3, "manufacturer"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->w()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_brand"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/h;->v()Lcom/adcolony/sdk/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/g0;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "media_path"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/h;->v()Lcom/adcolony/sdk/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/g0;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "temp_storage_path"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->x()I

    move-result v2

    const-string v3, "memory_class"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v2, "network_speed"

    const/16 v3, 0x14

    .line 28
    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 29
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->y()J

    move-result-wide v2

    const-string v4, "memory_used_mb"

    invoke-static {v0, v4, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;J)Z

    .line 30
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->z()Ljava/lang/String;

    move-result-object v2

    const-string v3, "model"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->z()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_model"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    iget-object v2, p0, Lcom/adcolony/sdk/j;->g:Ljava/lang/String;

    const-string v3, "sdk_type"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->C()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_version"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->o()Lcom/adcolony/sdk/b0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/b0;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "network_type"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->B()Ljava/lang/String;

    move-result-object v2

    const-string v3, "os_version"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    iget-object v2, p0, Lcom/adcolony/sdk/j;->f:Ljava/lang/String;

    const-string v3, "os_name"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    iget-object v2, p0, Lcom/adcolony/sdk/j;->f:Ljava/lang/String;

    const-string v3, "platform"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "arch"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->r()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/AdColonyAppOptions;->b()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "user_id"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->r()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/AdColonyAppOptions;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    invoke-static {}, Lcom/adcolony/sdk/k0;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_bundle_name"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    invoke-static {}, Lcom/adcolony/sdk/k0;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_bundle_version"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->g()D

    move-result-wide v2

    const-string v4, "battery_level"

    invoke-static {v0, v4, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 44
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->D()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cell_service_country_code"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->F()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timezone_ietf"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 46
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->E()I

    move-result v2

    const-string v3, "timezone_gmt_m"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 47
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->l()I

    move-result v2

    const-string v3, "timezone_dst_m"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 48
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->t()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "launch_metadata"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 49
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "controller_version"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->A()I

    move-result v1

    sput v1, Lcom/adcolony/sdk/j;->i:I

    const-string v2, "current_orientation"

    .line 51
    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 52
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->i()Z

    move-result v1

    const-string v2, "cleartext_permitted"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 53
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->n()F

    move-result v1

    float-to-double v1, v1

    const-string v3, "density"

    invoke-static {v0, v3, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 54
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->m()Z

    move-result v1

    const-string v2, "dark_mode"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 55
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "com.android.vending"

    .line 58
    invoke-static {v2}, Lcom/adcolony/sdk/k0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    const-string v2, "google"

    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1d1
    const-string v2, "com.amazon.venezia"

    .line 61
    invoke-static {v2}, Lcom/adcolony/sdk/k0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1de

    const-string v2, "amazon"

    .line 62
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1de
    const-string v2, "available_stores"

    .line 64
    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 67
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/adcolony/sdk/k0;->d(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "permissions"

    .line 68
    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    const/16 v1, 0x28

    .line 72
    :goto_1f2
    iget-boolean v2, p0, Lcom/adcolony/sdk/j;->c:Z

    if-nez v2, :cond_204

    if-lez v1, :cond_204

    if-eqz p1, :cond_204

    const-wide/16 v2, 0x32

    .line 74
    :try_start_1fc
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1fc .. :try_end_1ff} :catch_202

    add-int/lit8 v1, v1, -0x1

    goto :goto_1f2

    :catch_202
    nop

    goto :goto_1f2

    .line 79
    :cond_204
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "advertiser_id"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->u()Z

    move-result p1

    const-string v1, "limit_tracking"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 81
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_228

    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_235

    .line 82
    :cond_228
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/adcolony/sdk/k0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "android_id_sha1"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_235
    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .registers 2

    .line 4
    iput-object p1, p0, Lcom/adcolony/sdk/j;->a:Ljava/lang/String;

    return-void
.end method

.method a(Lorg/json/JSONObject;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/adcolony/sdk/j;->e:Lorg/json/JSONObject;

    return-void
.end method

.method b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .registers 2

    .line 3
    iput-object p1, p0, Lcom/adcolony/sdk/j;->h:Ljava/lang/String;

    return-void
.end method

.method b(Z)V
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/adcolony/sdk/j;->c:Z

    return-void
.end method

.method c()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 4
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "advertising_id"

    .line 5
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c(Z)V
    .registers 2

    .line 6
    iput-boolean p1, p0, Lcom/adcolony/sdk/j;->d:Z

    return-void
.end method

.method d()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "limit_ad_tracking"

    .line 6
    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_12} :catch_15

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    :catch_15
    :cond_15
    return v1
.end method

.method e()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 4
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()I
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method g()D
    .registers 7

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    return-wide v1

    .line 7
    :cond_9
    :try_start_9
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_18

    return-wide v1

    :cond_18
    const-string v3, "level"

    const/4 v4, -0x1

    .line 12
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "scale"

    .line 13
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_25} :catch_33

    if-ltz v3, :cond_33

    if-gez v0, :cond_2a

    goto :goto_33

    :cond_2a
    int-to-double v1, v3

    int-to-double v3, v0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    :catch_33
    :cond_33
    :goto_33
    return-wide v1
.end method

.method h()Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    const-string v2, "phone"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_14

    goto :goto_18

    .line 6
    :cond_14
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    const-string v1, "unknown"

    :cond_20
    return-object v1
.end method

.method i()Z
    .registers 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    .line 2
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method j()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/j;->h:Ljava/lang/String;

    return-object v0
.end method

.method k()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method l()I
    .registers 3

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_11
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    return v0
.end method

.method m()Z
    .registers 5

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-ge v2, v3, :cond_e

    goto :goto_24

    .line 4
    :cond_e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v2, 0x10

    if-eq v0, v2, :cond_24

    const/16 v2, 0x20

    if-eq v0, v2, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x1

    :cond_24
    :goto_24
    return v1
.end method

.method n()F
    .registers 2

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method o()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->I()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "tablet"

    goto :goto_b

    :cond_9
    const-string v0, "phone"

    :goto_b
    return-object v0
.end method

.method p()I
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_8
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_1e

    .line 7
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 9
    :cond_1e
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method q()I
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_8
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_1e

    .line 7
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 9
    :cond_1e
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method r()I
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_8
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_1e

    .line 7
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 9
    :cond_1e
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method s()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method t()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/j;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method u()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/adcolony/sdk/j;->d:Z

    return v0
.end method

.method v()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method w()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method x()I
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v2, "activity"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_13

    goto :goto_17

    .line 6
    :cond_13
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    :goto_17
    return v1
.end method

.method y()J
    .registers 6

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/high16 v0, 0x100000

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method z()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method
