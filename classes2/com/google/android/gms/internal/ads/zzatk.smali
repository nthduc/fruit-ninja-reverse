.class public final Lcom/google/android/gms/internal/ads/zzatk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzbsa:F

.field private zzdoc:I

.field private zzdod:I

.field private zzdul:I

.field private zzdum:Z

.field private zzdun:Z

.field private zzduo:I

.field private zzdup:I

.field private zzduq:I

.field private zzdur:Ljava/lang/String;

.field private zzdus:I

.field private zzdut:I

.field private zzduu:I

.field private zzduv:Z

.field private zzduw:I

.field private zzdux:D

.field private zzduy:Z

.field private zzduz:Ljava/lang/String;

.field private zzdva:Ljava/lang/String;

.field private zzdvb:Z

.field private zzdvc:Z

.field private zzdvd:Ljava/lang/String;

.field private zzdve:Z

.field private final zzdvf:Z

.field private zzdvg:Z

.field private zzdvh:Ljava/lang/String;

.field private zzdvi:Ljava/lang/String;

.field private zzdvj:Ljava/lang/String;

.field private zzdvk:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatk;->zzu(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatk;->zzv(Landroid/content/Context;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatk;->zzw(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "geo:0,0?q=donuts"

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzatk;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvb:Z

    const-string v2, "http://www.google.com"

    .line 8
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzatk;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvc:Z

    .line 9
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvd:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzym()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdve:Z

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isLatchsky(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvf:Z

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvg:Z

    .line 13
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvh:Ljava/lang/String;

    .line 14
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzatk;->zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvi:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzatk;->zzx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvj:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_63

    return-void

    .line 19
    :cond_63
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-nez p1, :cond_6a

    return-void

    .line 22
    :cond_6a
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzbsa:F

    .line 23
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdoc:I

    .line 24
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdod:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzatl;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatk;->zzu(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatk;->zzv(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzatk;->zzw(Landroid/content/Context;)V

    .line 31
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduz:Ljava/lang/String;

    .line 32
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdva:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwichMR1()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacc;->zzk(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvk:Z

    .line 36
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzdvb:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvb:Z

    .line 37
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzdvc:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvc:Z

    .line 38
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzdvd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvd:Ljava/lang/String;

    .line 39
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzdve:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdve:Z

    .line 40
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzdvf:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvf:Z

    .line 41
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzdvg:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvg:Z

    .line 42
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzdvh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvh:Ljava/lang/String;

    .line 43
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzdvi:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvi:Ljava/lang/String;

    .line 44
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzdvj:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvj:Ljava/lang/String;

    .line 45
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzbsa:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzbsa:F

    .line 46
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzdoc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdoc:I

    .line 47
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzatl;->zzdod:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdod:I

    return-void
.end method

.method private static zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .registers 4

    .line 126
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000

    .line 127
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    .line 129
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object p1

    const-string v0, "DeviceInfo.getResolveInfo"

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 5

    const-string v0, "market://details?id=com.google.android.gms.ads"

    .line 112
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzatk;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 115
    :cond_a
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p1, :cond_f

    return-object v0

    .line 119
    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 121
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_3e} :catch_3f

    return-object p0

    :catch_3f
    :cond_3f
    return-object v0
.end method

.method private final zzu(Landroid/content/Context;)V
    .registers 5

    const-string v0, "audio"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x2

    if-eqz p1, :cond_3b

    .line 51
    :try_start_b
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdul:I

    .line 52
    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdum:Z

    .line 53
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdun:Z

    const/4 v1, 0x3

    .line 54
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduo:I

    .line 55
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdup:I

    .line 56
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduq:I
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception p1

    .line 59
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v1

    const-string v2, "DeviceInfo.gatherAudioInfo"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3b
    const/4 p1, -0x2

    .line 60
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdul:I

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdum:Z

    .line 62
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdun:Z

    .line 63
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduo:I

    .line 64
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdup:I

    .line 65
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduq:I

    return-void
.end method

.method private final zzv(Landroid/content/Context;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const-string v0, "phone"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "connectivity"

    .line 70
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 71
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdur:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcyr:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x0

    goto :goto_35

    .line 77
    :cond_31
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    :goto_35
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdut:I

    .line 78
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduu:I

    const/4 v0, -0x2

    .line 79
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdus:I

    .line 80
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduv:Z

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduw:I

    .line 82
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 83
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzayu;->zzr(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 84
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 86
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdus:I

    .line 87
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduw:I

    goto :goto_69

    .line 88
    :cond_67
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdus:I

    .line 89
    :goto_69
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduv:Z

    :cond_6f
    return-void
.end method

.method private final zzw(Landroid/content/Context;)V
    .registers 7

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    const/4 v1, -0x1

    const-string v2, "status"

    .line 94
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    .line 95
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "scale"

    .line 96
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float v1, v3

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-double v3, v1

    .line 97
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdux:D

    const/4 p1, 0x2

    if-eq v2, p1, :cond_2e

    const/4 p1, 0x5

    if-ne v2, p1, :cond_2f

    :cond_2e
    const/4 v0, 0x1

    .line 98
    :cond_2f
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduy:Z

    return-void

    :cond_32
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 100
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzdux:D

    .line 101
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzatk;->zzduy:Z

    return-void
.end method

.method private static zzx(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 104
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    const-string v1, "com.android.vending"

    const/16 v2, 0x80

    .line 105
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 107
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    :cond_32
    return-object v0
.end method


# virtual methods
.method public final zzvn()Lcom/google/android/gms/internal/ads/zzatl;
    .registers 36

    move-object/from16 v0, p0

    .line 131
    new-instance v32, Lcom/google/android/gms/internal/ads/zzatl;

    move-object/from16 v1, v32

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdul:I

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvb:Z

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvc:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdur:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvd:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdve:Z

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvf:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvg:Z

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdum:Z

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdun:Z

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvh:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvi:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvj:Ljava/lang/String;

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzduo:I

    move-object/from16 v33, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdus:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdut:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzduu:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdup:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzduq:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzbsa:F

    move/from16 v21, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdoc:I

    move/from16 v22, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdod:I

    move/from16 v23, v1

    move/from16 v34, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdux:D

    move-wide/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzduy:Z

    move/from16 v26, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzduv:Z

    move/from16 v27, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzduw:I

    move/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzduz:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdvk:Z

    move/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzatk;->zzdva:Ljava/lang/String;

    move-object/from16 v31, v1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct/range {v1 .. v31}, Lcom/google/android/gms/internal/ads/zzatl;-><init>(IZZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIFIIDZZILjava/lang/String;ZLjava/lang/String;)V

    return-object v32
.end method
