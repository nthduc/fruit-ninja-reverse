.class public final Lcom/google/android/gms/measurement/internal/zzih;
.super Lcom/google/android/gms/measurement/internal/zze;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"


# instance fields
.field protected zza:Lcom/google/android/gms/measurement/internal/zzii;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private volatile zzb:Lcom/google/android/gms/measurement/internal/zzii;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzii;

.field private final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/measurement/internal/zzii;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Landroid/app/Activity;

.field private volatile zzf:Lcom/google/android/gms/measurement/internal/zzii;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzii;

.field private zzh:Z

.field private final zzi:Ljava/lang/Object;

.field private zzj:Lcom/google/android/gms/measurement/internal/zzii;

.field private zzk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfx;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zze;-><init>(Lcom/google/android/gms/measurement/internal/zzfx;)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzi:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzih;)Lcom/google/android/gms/measurement/internal/zzii;
    .registers 1

    .line 260
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzg:Lcom/google/android/gms/measurement/internal/zzii;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzih;Lcom/google/android/gms/measurement/internal/zzii;)Lcom/google/android/gms/measurement/internal/zzii;
    .registers 2

    const/4 p1, 0x0

    .line 262
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzg:Lcom/google/android/gms/measurement/internal/zzii;

    return-object p1
.end method

.method private static zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "\\."

    .line 144
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 145
    array-length v0, p0

    if-lez v0, :cond_f

    .line 146
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    goto :goto_11

    :cond_f
    const-string p0, ""

    .line 148
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1e

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1e
    return-object p0
.end method

.method private final zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzii;Z)V
    .registers 15
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzc:Lcom/google/android/gms/measurement/internal/zzii;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    :goto_9
    move-object v4, v0

    .line 60
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzii;->zzb:Ljava/lang/String;

    if-nez v0, :cond_2d

    if-eqz p1, :cond_1d

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    move-object v7, p1

    .line 62
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzii;

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzii;->zza:Ljava/lang/String;

    iget-wide v8, p2, Lcom/google/android/gms/measurement/internal/zzii;->zzc:J

    iget-boolean v10, p2, Lcom/google/android/gms/measurement/internal/zzii;->zze:Z

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzii;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object v3, p1

    goto :goto_2e

    :cond_2d
    move-object v3, p2

    .line 64
    :goto_2e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzc:Lcom/google/android/gms/measurement/internal/zzii;

    .line 65
    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzik;

    move-object v1, p2

    move-object v2, p0

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzik;-><init>(Lcom/google/android/gms/measurement/internal/zzih;Lcom/google/android/gms/measurement/internal/zzii;Lcom/google/android/gms/measurement/internal/zzii;JZ)V

    .line 68
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzih;Lcom/google/android/gms/measurement/internal/zzii;Lcom/google/android/gms/measurement/internal/zzii;JZLandroid/os/Bundle;)V
    .registers 14

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 259
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Lcom/google/android/gms/measurement/internal/zzii;Lcom/google/android/gms/measurement/internal/zzii;JZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzih;Lcom/google/android/gms/measurement/internal/zzii;ZJ)V
    .registers 5

    const/4 p2, 0x0

    .line 261
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Lcom/google/android/gms/measurement/internal/zzii;ZJ)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/measurement/internal/zzii;Landroid/os/Bundle;Z)V
    .registers 7

    const-string v0, "_si"

    const-string v1, "_sn"

    const-string v2, "_sc"

    if-eqz p1, :cond_32

    if-eqz p0, :cond_32

    .line 125
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz p2, :cond_32

    .line 126
    :cond_12
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzii;->zza:Ljava/lang/String;

    if-eqz p2, :cond_1c

    .line 127
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzii;->zza:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 128
    :cond_1c
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 129
    :goto_1f
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzii;->zzb:Ljava/lang/String;

    if-eqz p2, :cond_29

    .line 130
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzii;->zzb:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 131
    :cond_29
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 132
    :goto_2c
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzii;->zzc:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_32
    if-eqz p1, :cond_41

    if-nez p0, :cond_41

    if-eqz p2, :cond_41

    .line 134
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzii;Lcom/google/android/gms/measurement/internal/zzii;JZLandroid/os/Bundle;)V
    .registers 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object p6

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzat:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p6, v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p6, :cond_22

    if-eqz p5, :cond_19

    .line 73
    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzii;

    if-eqz p5, :cond_19

    const/4 p5, 0x1

    goto :goto_1a

    :cond_19
    const/4 p5, 0x0

    :goto_1a
    if-eqz p5, :cond_2c

    .line 75
    iget-object p6, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzii;

    invoke-direct {p0, p6, v1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Lcom/google/android/gms/measurement/internal/zzii;ZJ)V

    goto :goto_2c

    :cond_22
    if-eqz p5, :cond_2b

    .line 76
    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzii;

    if-eqz p5, :cond_2b

    .line 77
    invoke-direct {p0, p5, v1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Lcom/google/android/gms/measurement/internal/zzii;ZJ)V

    :cond_2b
    const/4 p5, 0x0

    :cond_2c
    :goto_2c
    if-eqz p2, :cond_4a

    .line 78
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/zzii;->zzc:J

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzii;->zzc:J

    cmp-long p6, v2, v4

    if-nez p6, :cond_4a

    iget-object p6, p2, Lcom/google/android/gms/measurement/internal/zzii;->zzb:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzii;->zzb:Ljava/lang/String;

    .line 79
    invoke-static {p6, v2}, Lcom/google/android/gms/measurement/internal/zzko;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_4a

    iget-object p6, p2, Lcom/google/android/gms/measurement/internal/zzii;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzii;->zza:Ljava/lang/String;

    .line 80
    invoke-static {p6, v2}, Lcom/google/android/gms/measurement/internal/zzko;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_4b

    :cond_4a
    const/4 v0, 0x1

    :cond_4b
    if-eqz v0, :cond_10c

    .line 82
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzcd:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 84
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    .line 85
    :cond_63
    invoke-static {p1, p6, v1}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Lcom/google/android/gms/measurement/internal/zzii;Landroid/os/Bundle;Z)V

    if-eqz p2, :cond_85

    .line 87
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzii;->zza:Ljava/lang/String;

    if-eqz v0, :cond_73

    .line 88
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzii;->zza:Ljava/lang/String;

    const-string v1, "_pn"

    invoke-virtual {p6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_73
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzii;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 90
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzii;->zzb:Ljava/lang/String;

    const-string v1, "_pc"

    invoke-virtual {p6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_7e
    iget-wide v0, p2, Lcom/google/android/gms/measurement/internal/zzii;->zzc:J

    const-string p2, "_pi"

    invoke-virtual {p6, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 92
    :cond_85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzat:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p2

    if-eqz p2, :cond_d9

    if-eqz p5, :cond_d9

    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkx;->zzb()Z

    move-result p2

    if-eqz p2, :cond_c2

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object p2

    sget-object p5, Lcom/google/android/gms/measurement/internal/zzas;->zzav:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p2, p5}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p2

    if-eqz p2, :cond_c2

    .line 95
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzb()Z

    move-result p2

    if-eqz p2, :cond_c2

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object p2

    sget-object p5, Lcom/google/android/gms/measurement/internal/zzas;->zzca:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p2, p5}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p2

    if-eqz p2, :cond_c2

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzk()Lcom/google/android/gms/measurement/internal/zzjs;

    move-result-object p2

    .line 100
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjs;->zzb:Lcom/google/android/gms/measurement/internal/zzjy;

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzjy;->zzc(J)J

    move-result-wide p2

    goto :goto_cc

    .line 102
    :cond_c2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzk()Lcom/google/android/gms/measurement/internal/zzjs;

    move-result-object p2

    .line 103
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjs;->zzb:Lcom/google/android/gms/measurement/internal/zzjy;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjy;->zzb()J

    move-result-wide p2

    :goto_cc
    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-lez v0, :cond_d9

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object p4

    invoke-virtual {p4, p6, p2, p3}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Landroid/os/Bundle;J)V

    .line 108
    :cond_d9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzas;->zzcd:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p2

    const-string p3, "auto"

    if-eqz p2, :cond_103

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaa;->zzj()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_fc

    const-wide/16 p4, 0x1

    const-string p2, "_mt"

    .line 110
    invoke-virtual {p6, p2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 111
    :cond_fc
    iget-boolean p2, p1, Lcom/google/android/gms/measurement/internal/zzii;->zze:Z

    if-eqz p2, :cond_103

    const-string p2, "app"

    move-object p3, p2

    .line 112
    :cond_103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object p2

    const-string p4, "_vs"

    invoke-virtual {p2, p3, p4, p6}, Lcom/google/android/gms/measurement/internal/zzhc;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    :cond_10c
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzii;

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/measurement/internal/zzas;->zzcd:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p2

    if-eqz p2, :cond_120

    iget-boolean p2, p1, Lcom/google/android/gms/measurement/internal/zzii;->zze:Z

    if-eqz p2, :cond_120

    .line 115
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzg:Lcom/google/android/gms/measurement/internal/zzii;

    .line 116
    :cond_120
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzh()Lcom/google/android/gms/measurement/internal/zzin;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzin;->zza(Lcom/google/android/gms/measurement/internal/zzii;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzii;ZJ)V
    .registers 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzb;->zza(J)V

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 119
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzii;->zzd:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 120
    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzk()Lcom/google/android/gms/measurement/internal/zzjs;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzjs;->zza(ZZJ)Z

    move-result p2

    if-eqz p2, :cond_27

    if-eqz p1, :cond_27

    .line 122
    iput-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzii;->zzd:Z

    :cond_27
    return-void
.end method

.method private final zzd(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzii;
    .registers 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 151
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzii;

    if-nez v0, :cond_2d

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzii;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzko;->zzg()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzii;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 157
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzcd:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p1

    if-nez p1, :cond_3a

    return-object v0

    .line 159
    :cond_3a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzf:Lcom/google/android/gms/measurement/internal/zzii;

    return-object v0
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/measurement/internal/zzii;
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzcd:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_1d

    if-nez p1, :cond_15

    goto :goto_1d

    .line 10
    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzii;

    if-eqz p1, :cond_1a

    return-object p1

    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzg:Lcom/google/android/gms/measurement/internal/zzii;

    return-object p1

    .line 9
    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zza:Lcom/google/android/gms/measurement/internal/zzii;

    return-object p1
.end method

.method public final bridge synthetic zza()V
    .registers 1

    .line 238
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zza()V

    return-void
.end method

.method public final zza(Landroid/app/Activity;)V
    .registers 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzcd:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzi:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 175
    :try_start_10
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzh:Z

    .line 176
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zze:Landroid/app/Activity;

    if-eq p1, v1, :cond_49

    .line 178
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzi:Ljava/lang/Object;

    monitor-enter v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_4b

    .line 179
    :try_start_19
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zze:Landroid/app/Activity;

    .line 180
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_46

    .line 181
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzcc:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zzj()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzf:Lcom/google/android/gms/measurement/internal/zzii;

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 185
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_4b

    goto :goto_49

    :catchall_46
    move-exception p1

    .line 180
    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw p1

    .line 186
    :cond_49
    :goto_49
    monitor-exit v0

    goto :goto_4e

    :catchall_4b
    move-exception p1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_4b

    throw p1

    .line 187
    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzcc:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_79

    .line 189
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzf:Lcom/google/android/gms/measurement/internal/zzii;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzij;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzij;-><init>(Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 191
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    return-void

    .line 193
    :cond_79
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzih;->zzd(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzii;Z)V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 197
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzc;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzc;-><init>(Lcom/google/android/gms/measurement/internal/zzb;J)V

    .line 198
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    if-nez p2, :cond_12

    return-void

    :cond_12
    const-string v0, "com.google.app_measurement.screen_service"

    .line 164
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1b

    return-void

    .line 167
    :cond_1b
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzii;

    const-string v1, "name"

    .line 168
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "referrer_name"

    .line 169
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 170
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzii;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 171
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zza(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/Size;
            max = 0x24L
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzk()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while screen reporting is disabled."

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    if-nez v0, :cond_2e

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzk()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called while no activity active"

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_44

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzk()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return-void

    :cond_44
    if-nez p3, :cond_52

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 28
    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzii;->zzb:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/google/android/gms/measurement/internal/zzko;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzii;->zza:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/zzko;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_74

    if-eqz v1, :cond_74

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzk()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "setCurrentScreen cannot be called with the same class and name"

    .line 33
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return-void

    :cond_74
    const/16 v0, 0x64

    if-eqz p2, :cond_9a

    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_84

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_9a

    .line 38
    :cond_84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzk()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid screen name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_9a
    if-eqz p3, :cond_be

    .line 43
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a8

    .line 44
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_be

    .line 45
    :cond_a8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzk()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    .line 47
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "Invalid class name length in setCurrentScreen. Length"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 49
    :cond_be
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    if-nez p2, :cond_cb

    const-string v1, "null"

    goto :goto_cc

    :cond_cb
    move-object v1, p2

    :goto_cc
    const-string v2, "Setting current screen to name, class"

    .line 52
    invoke-virtual {v0, v2, v1, p3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzii;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzko;->zzg()J

    move-result-wide v1

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzii;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 54
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 55
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzih;->zza(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/zzii;Z)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzii;)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 139
    monitor-enter p0

    .line 140
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzk:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzk:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz p2, :cond_16

    .line 141
    :cond_12
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzk:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzj:Lcom/google/android/gms/measurement/internal/zzii;

    .line 143
    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public final zzab()Lcom/google/android/gms/measurement/internal/zzii;
    .registers 2

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb()V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    return-object v0
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    .line 239
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzb()V

    return-void
.end method

.method public final zzb(Landroid/app/Activity;)V
    .registers 6
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzcd:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzi:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 202
    :try_start_10
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzh:Z

    .line 203
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    throw p1

    .line 204
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzcc:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_41

    .line 206
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzim;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzim;-><init>(Lcom/google/android/gms/measurement/internal/zzih;)V

    .line 208
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    return-void

    .line 210
    :cond_41
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzih;->zzd(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object p1

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzc:Lcom/google/android/gms/measurement/internal/zzii;

    .line 212
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzb:Lcom/google/android/gms/measurement/internal/zzii;

    .line 213
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzil;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzil;-><init>(Lcom/google/android/gms/measurement/internal/zzih;Lcom/google/android/gms/measurement/internal/zzii;J)V

    .line 215
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    if-nez p2, :cond_12

    return-void

    .line 221
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzii;

    if-nez p1, :cond_1d

    return-void

    .line 224
    :cond_1d
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 225
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzii;->zzc:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 226
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzii;->zza:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzii;->zzb:Ljava/lang/String;

    const-string v1, "referrer_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.google.app_measurement.screen_service"

    .line 228
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    .line 240
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzc()V

    return-void
.end method

.method public final zzc(Landroid/app/Activity;)V
    .registers 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzi:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zze:Landroid/app/Activity;

    if-ne p1, v1, :cond_a

    const/4 v1, 0x0

    .line 232
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzih;->zze:Landroid/app/Activity;

    .line 233
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 236
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzih;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_20
    move-exception p1

    .line 233
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    .line 241
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzd()V

    return-void
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzb;
    .registers 2

    .line 242
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zze()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzhc;
    .registers 2

    .line 243
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzf()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzeq;
    .registers 2

    .line 244
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzg()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzin;
    .registers 2

    .line 245
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzh()Lcom/google/android/gms/measurement/internal/zzin;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzih;
    .registers 2

    .line 246
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzi()Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzep;
    .registers 2

    .line 247
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzjs;
    .registers 2

    .line 248
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzk()Lcom/google/android/gms/measurement/internal/zzjs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzak;
    .registers 2

    .line 249
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzl()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 250
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    .line 251
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzer;
    .registers 2

    .line 252
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzko;
    .registers 2

    .line 253
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 254
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzet;
    .registers 2

    .line 255
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzff;
    .registers 2

    .line 256
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    .line 257
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzv;
    .registers 2

    .line 258
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    return-object v0
.end method

.method protected final zzz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
