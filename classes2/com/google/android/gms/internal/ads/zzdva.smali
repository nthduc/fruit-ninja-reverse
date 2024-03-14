.class public final Lcom/google/android/gms/internal/ads/zzdva;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# static fields
.field private static final zzhok:Ljava/lang/Object;


# instance fields
.field private final zzcln:Landroid/content/SharedPreferences;

.field private final zzhoj:Ljava/lang/String;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdva;->zzhok:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgo;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzgo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzvr:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgo;->zzv()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzhoj:Ljava/lang/String;

    const-string p2, "pcvmspf"

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzcln:Landroid/content/SharedPreferences;

    return-void
.end method

.method private final zzawt()Ljava/lang/String;
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzhoj:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "FBAMTD"

    if-eqz v1, :cond_13

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final zzawu()Ljava/lang/String;
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzhoj:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "LATMTD"

    if-eqz v1, :cond_13

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzgq;)Ljava/lang/String;
    .registers 4
    .param p0    # Lcom/google/android/gms/internal/ads/zzgq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgr;->zzdl()Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzdc()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgr$zza;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzdc()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgr$zza;->zzax(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzdc()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdj()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgr$zza;->zzdk(J)Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzdc()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgr$zza;->zzdl(J)Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzdc()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgr;->zzdi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgr$zza;->zzdj(J)Lcom/google/android/gms/internal/ads/zzgr$zza;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgr;

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeif;->zzbdw()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzei(I)Lcom/google/android/gms/internal/ads/zzgr;
    .registers 4

    .line 73
    sget v0, Lcom/google/android/gms/internal/ads/zzduz;->zzhof:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_10

    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzcln:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdva;->zzawu()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    .line 75
    :cond_10
    sget v0, Lcom/google/android/gms/internal/ads/zzduz;->zzhog:I

    if-ne p1, v0, :cond_1f

    .line 76
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzcln:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdva;->zzawt()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    :cond_1f
    move-object p1, v1

    :goto_20
    if-nez p1, :cond_23

    return-object v1

    .line 80
    :cond_23
    :try_start_23
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->stringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzu([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    .line 81
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejm;->zzbfu()Lcom/google/android/gms/internal/ads/zzejm;

    move-result-object v0

    .line 82
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgr;->zzb(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzejm;)Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p1
    :try_end_33
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_23 .. :try_end_33} :catch_34

    return-object p1

    :catch_34
    return-object v1
.end method

.method private final zzhg(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzvr:Landroid/content/Context;

    const-string v1, "pccache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzhoj:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgq;)Z
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/ads/zzgq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdva;->zzhok:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdc()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdg()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdva;->zzhg(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/io/File;

    const-string v3, "pcbc"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzde()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduu;->zza(Ljava/io/File;[B)Z

    move-result v1

    if-nez v1, :cond_27

    const/4 p1, 0x0

    .line 66
    monitor-exit v0

    return p1

    .line 67
    :cond_27
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdva;->zzb(Lcom/google/android/gms/internal/ads/zzgq;)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzcln:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdva;->zzawu()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_3e
    move-exception p1

    .line 71
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzdux;)Z
    .registers 9
    .param p1    # Lcom/google/android/gms/internal/ads/zzgq;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzdux;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdva;->zzhok:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_3
    sget v1, Lcom/google/android/gms/internal/ads/zzduz;->zzhof:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdva;->zzei(I)Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdc()Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgr;->zzdg()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 21
    monitor-exit v0

    return v3

    .line 23
    :cond_20
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdva;->zzhg(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 26
    monitor-exit v0

    return v3

    .line 27
    :cond_2c
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdva;->zzhg(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 28
    new-instance v2, Ljava/io/File;

    const-string v4, "pcam"

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    new-instance v4, Ljava/io/File;

    const-string v5, "pcbc"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzdd()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzduu;->zza(Ljava/io/File;[B)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 31
    monitor-exit v0

    return v3

    .line 32
    :cond_4e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgq;->zzde()Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzduu;->zza(Ljava/io/File;[B)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 33
    monitor-exit v0

    return v3

    :cond_5e
    if-eqz p2, :cond_6b

    .line 34
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzdux;->zzb(Ljava/io/File;)Z

    move-result p2

    if-nez p2, :cond_6b

    .line 35
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzduu;->zze(Ljava/io/File;)Z

    .line 36
    monitor-exit v0

    return v3

    .line 37
    :cond_6b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdva;->zzb(Lcom/google/android/gms/internal/ads/zzgq;)Ljava/lang/String;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzcln:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdva;->zzawu()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzcln:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdva;->zzawu()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz p2, :cond_90

    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdva;->zzawt()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    :cond_90
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_98

    .line 45
    monitor-exit v0

    return v3

    .line 47
    :cond_98
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 48
    sget p2, Lcom/google/android/gms/internal/ads/zzduz;->zzhof:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdva;->zzei(I)Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p2

    if-eqz p2, :cond_ac

    .line 50
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgr;->zzdg()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_ac
    sget p2, Lcom/google/android/gms/internal/ads/zzduz;->zzhog:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdva;->zzei(I)Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p2

    if-eqz p2, :cond_bb

    .line 53
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgr;->zzdg()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_bb
    new-instance p2, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzvr:Landroid/content/Context;

    const-string v2, "pccache"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdva;->zzhoj:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length v1, p2

    :goto_cf
    if-ge v3, v1, :cond_e3

    aget-object v2, p2, v3

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e0

    .line 57
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzduu;->zze(Ljava/io/File;)Z

    :cond_e0
    add-int/lit8 v3, v3, 0x1

    goto :goto_cf

    .line 59
    :cond_e3
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_e6
    move-exception p1

    .line 60
    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_3 .. :try_end_e8} :catchall_e6

    throw p1

    return-void
.end method

.method public final zzp(I)Lcom/google/android/gms/internal/ads/zzdus;
    .registers 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdva;->zzhok:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdva;->zzei(I)Lcom/google/android/gms/internal/ads/zzgr;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    .line 10
    monitor-exit v0

    return-object p1

    .line 11
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgr;->zzdg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdva;->zzhg(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/io/File;

    const-string v3, "pcam"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    new-instance v3, Ljava/io/File;

    const-string v4, "pcbc"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    new-instance v4, Ljava/io/File;

    const-string v5, "pcopt"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdus;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdus;-><init>(Lcom/google/android/gms/internal/ads/zzgr;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    monitor-exit v0

    return-object v1

    :catchall_30
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method
