.class public Lcom/google/android/gms/measurement/internal/zzkg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.1"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzgu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzkg$zza;
    }
.end annotation


# static fields
.field private static volatile zza:Lcom/google/android/gms/measurement/internal/zzkg;


# instance fields
.field private zzb:Lcom/google/android/gms/measurement/internal/zzfr;

.field private zzc:Lcom/google/android/gms/measurement/internal/zzfa;

.field private zzd:Lcom/google/android/gms/measurement/internal/zzab;

.field private zze:Lcom/google/android/gms/measurement/internal/zzfd;

.field private zzf:Lcom/google/android/gms/measurement/internal/zzkc;

.field private zzg:Lcom/google/android/gms/measurement/internal/zzq;

.field private final zzh:Lcom/google/android/gms/measurement/internal/zzkk;

.field private zzi:Lcom/google/android/gms/measurement/internal/zzig;

.field private final zzj:Lcom/google/android/gms/measurement/internal/zzfx;

.field private zzk:Z

.field private zzl:Z

.field private zzm:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzo:I

.field private zzp:I

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private zzt:Ljava/nio/channels/FileLock;

.field private zzu:Ljava/nio/channels/FileChannel;

.field private zzv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzx:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .registers 3

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzfx;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzfx;)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzk:Z

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzkl;->zza:Landroid/content/Context;

    const/4 v0, 0x0

    .line 19
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzaa;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzfx;

    move-result-object p2

    .line 21
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    const-wide/16 v0, -0x1

    .line 22
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzx:J

    .line 24
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkk;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;)V

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzal()V

    .line 27
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzh:Lcom/google/android/gms/measurement/internal/zzkk;

    .line 29
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfa;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;)V

    .line 31
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzal()V

    .line 32
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzc:Lcom/google/android/gms/measurement/internal/zzfa;

    .line 34
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfr;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;)V

    .line 36
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzal()V

    .line 37
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p2

    .line 40
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkf;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzkl;)V

    .line 41
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 2216
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    .line 2217
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4d

    :cond_d
    const/4 v1, 0x4

    .line 2223
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 2224
    :try_start_14
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2225
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_34

    const/4 v1, -0x1

    if-eq p1, v1, :cond_33

    .line 2229
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2230
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_33
    return v0

    .line 2232
    :cond_34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2233
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3b} :catch_3c

    goto :goto_4c

    :catch_3c
    move-exception p1

    .line 2237
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2238
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4c
    return v0

    .line 2219
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 2220
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzg;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 12

    const/4 v0, 0x1

    if-nez p2, :cond_1e

    .line 2849
    new-instance p2, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-direct {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfx;Ljava/lang/String;)V

    .line 2851
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v1

    .line 2852
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzko;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    .line 2853
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    :goto_1c
    const/4 p3, 0x1

    goto :goto_3a

    .line 2855
    :cond_1e
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 2856
    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 2858
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object p3

    .line 2859
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzko;->zzk()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    goto :goto_1c

    :cond_39
    const/4 p3, 0x0

    .line 2861
    :goto_3a
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 2862
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 2864
    :cond_4c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 2865
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 2867
    :cond_5e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 2868
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    .line 2869
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 2870
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 2871
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 2873
    :cond_88
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    .line 2874
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 2875
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 2877
    :cond_a2
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_ba

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_ba

    .line 2878
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    const/4 p3, 0x1

    .line 2880
    :cond_ba
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d4

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    .line 2881
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 2882
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 2884
    :cond_d4
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_e4

    .line 2885
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(J)V

    const/4 p3, 0x1

    .line 2887
    :cond_e4
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_fa

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 2888
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 2890
    :cond_fa
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_10a

    .line 2891
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zze(J)V

    const/4 p3, 0x1

    .line 2893
    :cond_10a
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Z

    move-result v2

    if-eq v1, v2, :cond_118

    .line 2894
    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Z)V

    const/4 p3, 0x1

    .line 2896
    :cond_118
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_132

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzg:Ljava/lang/String;

    .line 2897
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_132

    .line 2898
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 2901
    :cond_132
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    .line 2902
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzcm:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-nez v1, :cond_150

    .line 2903
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzl:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_150

    .line 2904
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzl:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    const/4 p3, 0x1

    .line 2906
    :cond_150
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzo:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v2

    if-eq v1, v2, :cond_15e

    .line 2907
    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzo:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Z)V

    const/4 p3, 0x1

    .line 2909
    :cond_15e
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzp:Z

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Z

    move-result v2

    if-eq v1, v2, :cond_16c

    .line 2910
    iget-boolean p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzp:Z

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Z)V

    const/4 p3, 0x1

    .line 2912
    :cond_16c
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v2

    if-eq v1, v2, :cond_17a

    .line 2913
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/Boolean;)V

    const/4 p3, 0x1

    .line 2915
    :cond_17a
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzt:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_190

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzt:J

    .line 2916
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_190

    .line 2917
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzt:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(J)V

    const/4 p3, 0x1

    :cond_190
    if-eqz p3, :cond_199

    .line 2920
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_199
    return-object p2
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzkg;
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkg;->zza:Lcom/google/android/gms/measurement/internal/zzkg;

    if-nez v0, :cond_26

    .line 4
    const-class v0, Lcom/google/android/gms/measurement/internal/zzkg;

    monitor-enter v0

    .line 5
    :try_start_11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzkg;->zza:Lcom/google/android/gms/measurement/internal/zzkg;

    if-nez v1, :cond_21

    .line 7
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzkl;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzkg;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzkg;-><init>(Lcom/google/android/gms/measurement/internal/zzkl;)V

    .line 10
    sput-object p0, Lcom/google/android/gms/measurement/internal/zzkg;->zza:Lcom/google/android/gms/measurement/internal/zzkg;

    .line 11
    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_23

    throw p0

    .line 12
    :cond_26
    :goto_26
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzkg;->zza:Lcom/google/android/gms/measurement/internal/zzkg;

    return-object p0
.end method

.method private final zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;
    .registers 34
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 2674
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_c6

    .line 2675
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto/16 :goto_c6

    .line 2680
    :cond_1b
    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 2681
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 2683
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2684
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    .line 2685
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    .line 2687
    :cond_3b
    new-instance v30, Lcom/google/android/gms/measurement/internal/zzm;

    .line 2688
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v4

    .line 2689
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v5

    .line 2690
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v6

    .line 2691
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v8

    .line 2692
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v9

    .line 2693
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 2694
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Z

    move-result v14

    .line 2695
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v16

    .line 2696
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 2697
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v22

    .line 2698
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Z

    move-result v23

    const/16 v24, 0x0

    .line 2699
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v25

    .line 2700
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v26

    .line 2701
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v27

    .line 2702
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Ljava/util/List;

    move-result-object v29

    .line 2703
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v31

    if-eqz v31, :cond_9b

    .line 2704
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v3

    .line 2705
    sget-object v15, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v3, v2, v15}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 2706
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    goto :goto_9d

    :cond_9b
    const/16 v31, 0x0

    :goto_9d
    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v11

    move-object v12, v13

    move v13, v14

    const/4 v14, 0x0

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-wide/from16 v26, v27

    move-object/from16 v28, v29

    move-object/from16 v29, v31

    .line 2707
    invoke-direct/range {v1 .. v29}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V

    return-object v30

    .line 2677
    :cond_c6
    :goto_c6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2678
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v3, "No app data available; dropping"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;ILjava/lang/String;)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1730
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1731
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_21

    .line 1732
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1735
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzk()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v0

    .line 1736
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v0

    int-to-long v1, p1

    .line 1737
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object p1

    .line 1738
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    .line 1739
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzk()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v0

    const-string v1, "_ev"

    .line 1740
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v0

    .line 1741
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object p2

    .line 1742
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    .line 1743
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zze;)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zze;)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1722
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1723
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1724
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1726
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;)V
    .registers 8

    const-wide v0, 0x7fffffffffffffffL

    .line 1644
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    const/4 v0, 0x0

    .line 1645
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 1646
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    move-result-object v1

    .line 1647
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zze()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzf()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_2c

    .line 1648
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zze()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 1649
    :cond_2c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zze()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzg()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_3f

    .line 1650
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zze()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzc(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_42
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;JZ)V
    .registers 14
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-eqz p4, :cond_5

    const-string v0, "_se"

    goto :goto_7

    :cond_5
    const-string v0, "_lte"

    .line 1657
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 1658
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    if-nez v2, :cond_1a

    goto :goto_3f

    .line 1664
    :cond_1a
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkp;

    .line 1665
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    .line 1666
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 1667
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 1668
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_5a

    .line 1659
    :cond_3f
    :goto_3f
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkp;

    .line 1660
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    .line 1661
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 1662
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    .line 1663
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v3, "auto"

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 1669
    :goto_5a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v1

    .line 1670
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v1

    .line 1671
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 1672
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1673
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v1

    .line 1674
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    const/4 v2, 0x0

    .line 1677
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8f

    .line 1679
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zzk;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    const/4 v2, 0x1

    :cond_8f
    if-nez v2, :cond_94

    .line 1682
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzk;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    :cond_94
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_b9

    .line 1684
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzkp;)Z

    if-eqz p4, :cond_a6

    const-string p1, "session-scoped"

    goto :goto_a8

    :cond_a6
    const-string p1, "lifetime"

    .line 1689
    :goto_a8
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    .line 1690
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    iget-object p3, v8, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 1691
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b9
    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzg;)V
    .registers 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1834
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 1835
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1836
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    .line 1837
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1838
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1839
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1840
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1841
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 1843
    :cond_47
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1844
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1845
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 1848
    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    .line 1849
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/String;

    move-result-object v0

    .line 1850
    :try_start_73
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1852
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 1853
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1855
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    move-result-object v1

    const/4 v2, 0x0

    .line 1857
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_b8

    .line 1858
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    .line 1859
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    .line 1860
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_b9

    :cond_b8
    move-object v6, v2

    :goto_b9
    const/4 v1, 0x1

    .line 1861
    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzq:Z

    .line 1862
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v2

    .line 1863
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzkh;

    invoke-direct {v7, p0}, Lcom/google/android/gms/measurement/internal/zzkh;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;)V

    .line 1865
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1866
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1867
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfc;)V

    .line 1870
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Ljava/lang/Runnable;)V
    :try_end_e3
    .catch Ljava/net/MalformedURLException; {:try_start_73 .. :try_end_e3} :catch_e4

    return-void

    .line 1874
    :catch_e4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 1875
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    .line 1876
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 1877
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzkl;)V
    .registers 2

    .line 2997
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzkl;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .registers 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 44
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 47
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;)V

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzal()V

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzd:Lcom/google/android/gms/measurement/internal/zzab;

    .line 52
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzac;)V

    .line 55
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzq;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;)V

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzal()V

    .line 58
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzg:Lcom/google/android/gms/measurement/internal/zzq;

    .line 60
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzig;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzig;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;)V

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzal()V

    .line 63
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzi:Lcom/google/android/gms/measurement/internal/zzig;

    .line 65
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkc;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;)V

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzal()V

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzf:Lcom/google/android/gms/measurement/internal/zzkc;

    .line 70
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfd;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;)V

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zze:Lcom/google/android/gms/measurement/internal/zzfd;

    .line 72
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzo:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzp:I

    if-eq p1, v0, :cond_64

    .line 74
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzo:I

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzp:I

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 78
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzk:Z

    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .registers 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 2240
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    const/4 v0, 0x0

    if-eqz p2, :cond_6e

    .line 2241
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_6e

    :cond_d
    const/4 v1, 0x4

    .line 2247
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2248
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2249
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    .line 2250
    :try_start_1a
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 2252
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object p1

    .line 2253
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzbz:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result p1

    if-eqz p1, :cond_34

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt p1, v4, :cond_34

    .line 2254
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 2255
    :cond_34
    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 2256
    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 2257
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5c

    .line 2259
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2260
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_5c} :catch_5d

    :cond_5c
    return p1

    :catch_5d
    move-exception p1

    .line 2264
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    .line 2265
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 2243
    :cond_6e
    :goto_6e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 2244
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)Z
    .registers 7

    .line 1694
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1695
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1697
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    .line 1698
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    const-string v1, "_sc"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    move-object v0, v1

    goto :goto_27

    .line 1699
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 1701
    :goto_27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    const-string v3, "_pc"

    invoke-static {v2, v3}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v2

    if-nez v2, :cond_3b

    goto :goto_3f

    .line 1702
    :cond_3b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzd()Ljava/lang/String;

    move-result-object v1

    :goto_3f
    if-eqz v1, :cond_4c

    .line 1703
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1704
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)V

    const/4 p1, 0x1

    return p1

    :cond_4c
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/String;J)Z
    .registers 47
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    const-string v2, ""

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()V

    .line 969
    :try_start_b
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzkg$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzkf;)V

    .line 970
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzx:J

    .line 972
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 974
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_f43

    const-wide/16 v9, -0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 976
    :try_start_25
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 977
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_2d} :catch_253
    .catchall {:try_start_25 .. :try_end_2d} :catchall_24e

    if-eqz v14, :cond_a1

    cmp-long v14, v6, v9

    if-eqz v14, :cond_4d

    .line 979
    :try_start_33
    new-array v14, v11, [Ljava/lang/String;

    .line 980
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v12

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v13
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_41} :catch_47
    .catchall {:try_start_33 .. :try_end_41} :catchall_42

    goto :goto_55

    :catchall_42
    move-exception v0

    move-object v2, v0

    move-object v9, v4

    goto/16 :goto_f3d

    :catch_47
    move-exception v0

    move-object v8, v4

    move-object v9, v8

    :goto_4a
    move-object v4, v0

    goto/16 :goto_257

    .line 981
    :cond_4d
    :try_start_4d
    new-array v14, v13, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v12
    :try_end_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_55} :catch_253
    .catchall {:try_start_4d .. :try_end_55} :catchall_24e

    :goto_55
    cmp-long v16, v6, v9

    if-eqz v16, :cond_5e

    :try_start_59
    const-string v16, "rowid <= ? and "
    :try_end_5b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_5b} :catch_47
    .catchall {:try_start_59 .. :try_end_5b} :catchall_42

    move-object/from16 p1, v16

    goto :goto_60

    :cond_5e
    move-object/from16 p1, v2

    .line 983
    :goto_60
    :try_start_60
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0x94

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 984
    invoke-virtual {v15, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_82
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_60 .. :try_end_82} :catch_253
    .catchall {:try_start_60 .. :try_end_82} :catchall_24e

    .line 985
    :try_start_82
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_86
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_82 .. :try_end_86} :catch_249
    .catchall {:try_start_82 .. :try_end_86} :catchall_42

    if-nez v8, :cond_8f

    if-eqz v4, :cond_26d

    .line 987
    :try_start_8a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_f43

    goto/16 :goto_26d

    .line 989
    :cond_8f
    :try_start_8f
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_93
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8f .. :try_end_93} :catch_249
    .catchall {:try_start_8f .. :try_end_93} :catchall_42

    .line 990
    :try_start_93
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 991
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_9a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_93 .. :try_end_9a} :catch_9e
    .catchall {:try_start_93 .. :try_end_9a} :catchall_42

    move-object v9, v4

    move-object v4, v8

    move-object v8, v14

    goto :goto_f6

    :catch_9e
    move-exception v0

    move-object v9, v4

    goto :goto_4a

    :cond_a1
    cmp-long v4, v6, v9

    if-eqz v4, :cond_b1

    .line 994
    :try_start_a5
    new-array v4, v11, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v8, v4, v12

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v13

    goto :goto_b7

    :cond_b1
    const/4 v4, 0x0

    .line 995
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    :goto_b7
    cmp-long v8, v6, v9

    if-eqz v8, :cond_be

    const-string v8, " and rowid <= ?"

    goto :goto_bf

    :cond_be
    move-object v8, v2

    .line 997
    :goto_bf
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x54

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " order by rowid limit 1;"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 998
    invoke-virtual {v15, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_df
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a5 .. :try_end_df} :catch_253
    .catchall {:try_start_a5 .. :try_end_df} :catchall_24e

    .line 999
    :try_start_df
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_e3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_df .. :try_end_e3} :catch_249
    .catchall {:try_start_df .. :try_end_e3} :catchall_42

    if-nez v8, :cond_ec

    if-eqz v4, :cond_26d

    .line 1001
    :try_start_e7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_f43

    goto/16 :goto_26d

    .line 1003
    :cond_ec
    :try_start_ec
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1004
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_f3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ec .. :try_end_f3} :catch_249
    .catchall {:try_start_ec .. :try_end_f3} :catchall_42

    move-object v9, v4

    move-object v8, v14

    const/4 v4, 0x0

    :goto_f6
    :try_start_f6
    const-string v10, "raw_events_metadata"

    const-string v14, "metadata"

    .line 1005
    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v16

    const-string v17, "app_id = ? and metadata_fingerprint = ?"

    new-array v14, v11, [Ljava/lang/String;

    aput-object v4, v14, v12

    aput-object v8, v14, v13

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    const-string v22, "2"

    move-object/from16 v18, v14

    move-object v14, v15

    move-object/from16 v24, v15

    move-object v15, v10

    .line 1006
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1007
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-nez v10, :cond_136

    .line 1008
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    .line 1009
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v6

    const-string v7, "Raw event metadata record is missing. appId"

    .line 1010
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f6 .. :try_end_12f} :catch_245
    .catchall {:try_start_f6 .. :try_end_12f} :catchall_f3b

    if-eqz v9, :cond_26d

    .line 1012
    :try_start_131
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_f43

    goto/16 :goto_26d

    .line 1014
    :cond_136
    :try_start_136
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10
    :try_end_13a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_136 .. :try_end_13a} :catch_245
    .catchall {:try_start_136 .. :try_end_13a} :catchall_f3b

    .line 1015
    :try_start_13a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzbf()Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v14

    invoke-static {v14, v10}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzgs;[B)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzbw$zzg;
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_14c} :catch_22c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13a .. :try_end_14c} :catch_245
    .catchall {:try_start_13a .. :try_end_14c} :catchall_f3b

    .line 1025
    :try_start_14c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_163

    .line 1026
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v14

    .line 1027
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v14

    const-string v15, "Get multiple raw event metadata records, expected one. appId"

    .line 1028
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1029
    invoke-virtual {v14, v15, v11}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1030
    :cond_163
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1031
    invoke-interface {v3, v10}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg;)V

    const-wide/16 v10, -0x1

    cmp-long v14, v6, v10

    if-eqz v14, :cond_184

    const-string v10, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v11, 0x3

    .line 1034
    new-array v14, v11, [Ljava/lang/String;

    aput-object v4, v14, v12

    aput-object v8, v14, v13

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v14, v7

    move-object/from16 v17, v10

    move-object/from16 v18, v14

    goto :goto_191

    :cond_184
    const-string v6, "app_id = ? and metadata_fingerprint = ?"

    const/4 v7, 0x2

    .line 1036
    new-array v10, v7, [Ljava/lang/String;

    aput-object v4, v10, v12

    aput-object v8, v10, v13

    move-object/from16 v17, v6

    move-object/from16 v18, v10

    :goto_191
    const-string v15, "raw_events"

    const-string v6, "rowid"

    const-string v7, "name"

    const-string v8, "timestamp"

    const-string v10, "data"

    .line 1037
    filled-new-array {v6, v7, v8, v10}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "rowid"

    const/16 v22, 0x0

    move-object/from16 v14, v24

    .line 1038
    invoke-virtual/range {v14 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1ad
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14c .. :try_end_1ad} :catch_245
    .catchall {:try_start_14c .. :try_end_1ad} :catchall_f3b

    .line 1039
    :try_start_1ad
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_1cb

    .line 1040
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 1041
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    const-string v8, "Raw event data disappeared while in transaction. appId"

    .line 1042
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1043
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1c4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ad .. :try_end_1c4} :catch_227
    .catchall {:try_start_1ad .. :try_end_1c4} :catchall_222

    if-eqz v6, :cond_26d

    .line 1045
    :try_start_1c6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1c9
    .catchall {:try_start_1c6 .. :try_end_1c9} :catchall_f43

    goto/16 :goto_26d

    .line 1047
    :cond_1cb
    :try_start_1cb
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x3

    .line 1048
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10
    :try_end_1d4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1cb .. :try_end_1d4} :catch_227
    .catchall {:try_start_1cb .. :try_end_1d4} :catchall_222

    .line 1049
    :try_start_1d4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzj()Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzgs;[B)Lcom/google/android/gms/internal/measurement/zzgs;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;
    :try_end_1de
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1de} :catch_203
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d4 .. :try_end_1de} :catch_227
    .catchall {:try_start_1d4 .. :try_end_1de} :catchall_222

    .line 1056
    :try_start_1de
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    .line 1057
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    invoke-interface {v3, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzad;->zza(JLcom/google/android/gms/internal/measurement/zzbw$zzc;)Z

    move-result v7
    :try_end_1fa
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1de .. :try_end_1fa} :catch_227
    .catchall {:try_start_1de .. :try_end_1fa} :catchall_222

    if-nez v7, :cond_216

    if-eqz v6, :cond_26d

    .line 1059
    :try_start_1fe
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_201
    .catchall {:try_start_1fe .. :try_end_201} :catchall_f43

    goto/16 :goto_26d

    :catch_203
    move-exception v0

    move-object v7, v0

    .line 1052
    :try_start_205
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    .line 1053
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    const-string v9, "Data loss. Failed to merge raw event. appId"

    .line 1054
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1061
    :cond_216
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_21a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_205 .. :try_end_21a} :catch_227
    .catchall {:try_start_205 .. :try_end_21a} :catchall_222

    if-nez v7, :cond_1cb

    if-eqz v6, :cond_26d

    .line 1063
    :try_start_21e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_221
    .catchall {:try_start_21e .. :try_end_221} :catchall_f43

    goto :goto_26d

    :catchall_222
    move-exception v0

    move-object v2, v0

    move-object v9, v6

    goto/16 :goto_f3d

    :catch_227
    move-exception v0

    move-object v8, v4

    move-object v9, v6

    goto/16 :goto_4a

    :catch_22c
    move-exception v0

    move-object v6, v0

    .line 1018
    :try_start_22e
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 1019
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    const-string v8, "Data loss. Failed to merge raw event metadata. appId"

    .line 1020
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 1021
    invoke-virtual {v7, v8, v10, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_23f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22e .. :try_end_23f} :catch_245
    .catchall {:try_start_22e .. :try_end_23f} :catchall_f3b

    if-eqz v9, :cond_26d

    .line 1023
    :try_start_241
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_244
    .catchall {:try_start_241 .. :try_end_244} :catchall_f43

    goto :goto_26d

    :catch_245
    move-exception v0

    move-object v8, v4

    goto/16 :goto_4a

    :catch_249
    move-exception v0

    move-object v9, v4

    const/4 v8, 0x0

    goto/16 :goto_4a

    :catchall_24e
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    goto/16 :goto_f3d

    :catch_253
    move-exception v0

    move-object v4, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1065
    :goto_257
    :try_start_257
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 1066
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v6, "Data loss. Error selecting raw event. appId"

    .line 1067
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_268
    .catchall {:try_start_257 .. :try_end_268} :catchall_f3b

    if-eqz v9, :cond_26d

    .line 1069
    :try_start_26a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1074
    :cond_26d
    :goto_26d
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zzc:Ljava/util/List;

    if-eqz v4, :cond_27c

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zzc:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_27a

    goto :goto_27c

    :cond_27a
    const/4 v4, 0x0

    goto :goto_27d

    :cond_27c
    :goto_27c
    const/4 v4, 0x1

    :goto_27d
    if-nez v4, :cond_f2b

    .line 1077
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1078
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbm()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v4

    .line 1079
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v4

    .line 1083
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v5

    .line 1084
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzau:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    .line 1089
    :goto_2a9
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zzc:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11
    :try_end_2af
    .catchall {:try_start_26a .. :try_end_2af} :catchall_f43

    const-string v13, "_et"

    move-object/from16 v20, v2

    const-string v2, "_e"

    move/from16 v21, v9

    move/from16 v22, v10

    if-ge v8, v11, :cond_89c

    .line 1091
    :try_start_2bb
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zzc:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    .line 1092
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbm()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v11

    .line 1093
    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1095
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    move/from16 v26, v8

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_2df
    .catchall {:try_start_2bb .. :try_end_2df} :catchall_f43

    const-string v9, "_err"

    if-eqz v8, :cond_365

    .line 1097
    :try_start_2e3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 1098
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v8, "Dropping blacklisted raw event. appId"

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1099
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 1100
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v13

    move-wide/from16 v27, v14

    .line 1101
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1102
    invoke-virtual {v2, v8, v10, v13}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32f

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v2

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1106
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32d

    goto :goto_32f

    :cond_32d
    const/4 v2, 0x0

    goto :goto_330

    :cond_32f
    :goto_32f
    const/4 v2, 0x1

    :goto_330
    if-nez v2, :cond_355

    .line 1107
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_355

    .line 1109
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v29

    .line 1110
    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1111
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0xb

    const-string v32, "_ev"

    .line 1112
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    .line 1113
    invoke-virtual/range {v29 .. v34}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_355
    move/from16 v29, v5

    move-object/from16 v31, v7

    move v2, v12

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v7, v26

    move-wide/from16 v14, v27

    const/4 v12, 0x3

    goto/16 :goto_890

    :cond_365
    move-wide/from16 v27, v14

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v8

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1116
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v10, v14}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_379
    .catchall {:try_start_2e3 .. :try_end_379} :catchall_f43

    const-string v10, "_c"

    if-nez v8, :cond_3d2

    .line 1117
    :try_start_37d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    .line 1118
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 1119
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    move/from16 v29, v5

    const v5, 0x171c4

    if-eq v15, v5, :cond_3b1

    const v5, 0x17331

    if-eq v15, v5, :cond_3a7

    const v5, 0x17333

    if-eq v15, v5, :cond_39d

    goto :goto_3bb

    :cond_39d
    const-string v5, "_ui"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3bb

    const/4 v5, 0x1

    goto :goto_3bc

    :cond_3a7
    const-string v5, "_ug"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3bb

    const/4 v5, 0x2

    goto :goto_3bc

    :cond_3b1
    const-string v5, "_in"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3bb

    const/4 v5, 0x0

    goto :goto_3bc

    :cond_3bb
    :goto_3bb
    const/4 v5, -0x1

    :goto_3bc
    if-eqz v5, :cond_3c6

    const/4 v14, 0x1

    if-eq v5, v14, :cond_3c6

    const/4 v14, 0x2

    if-eq v5, v14, :cond_3c6

    const/4 v5, 0x0

    goto :goto_3c7

    :cond_3c6
    const/4 v5, 0x1

    :goto_3c7
    if-eqz v5, :cond_3ca

    goto :goto_3d4

    :cond_3ca
    move-object/from16 v31, v7

    move/from16 v30, v12

    move-object/from16 v32, v13

    goto/16 :goto_5af

    :cond_3d2
    move/from16 v29, v5

    :goto_3d4
    move/from16 v30, v12

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1125
    :goto_3d9
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzb()I

    move-result v12
    :try_end_3dd
    .catchall {:try_start_37d .. :try_end_3dd} :catchall_f43

    move-object/from16 v31, v7

    const-string v7, "_r"

    if-ge v5, v12, :cond_447

    .line 1126
    :try_start_3e3
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_412

    .line 1128
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v7

    .line 1129
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbm()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v7

    .line 1130
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-object/from16 v32, v13

    const-wide/16 v12, 0x1

    .line 1131
    invoke-virtual {v7, v12, v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v7

    .line 1132
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    .line 1134
    invoke-virtual {v11, v5, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zze;)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    const/4 v14, 0x1

    goto :goto_440

    :cond_412
    move-object/from16 v32, v13

    .line 1135
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_440

    .line 1137
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v7

    .line 1138
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbm()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v7

    .line 1139
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    const-wide/16 v12, 0x1

    .line 1140
    invoke-virtual {v7, v12, v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v7

    .line 1141
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    .line 1143
    invoke-virtual {v11, v5, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zze;)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    const/4 v15, 0x1

    :cond_440
    :goto_440
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, v31

    move-object/from16 v13, v32

    goto :goto_3d9

    :cond_447
    move-object/from16 v32, v13

    if-nez v14, :cond_47b

    if-eqz v8, :cond_47b

    .line 1147
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 1148
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v12, "Marking event as conversion"

    .line 1149
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v13

    .line 1150
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1151
    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1153
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzk()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v5

    .line 1154
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v5

    const-wide/16 v12, 0x1

    .line 1155
    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v5

    .line 1156
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    :cond_47b
    if-nez v15, :cond_4ab

    .line 1159
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 1160
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v12, "Marking event as real-time"

    .line 1161
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v13

    .line 1162
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1163
    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1165
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzk()Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v5

    .line 1166
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v5

    const-wide/16 v12, 0x1

    .line 1167
    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v5

    .line 1168
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    .line 1171
    :cond_4ab
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v33

    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzx()J

    move-result-wide v34

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1173
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x1

    .line 1174
    invoke-virtual/range {v33 .. v41}, Lcom/google/android/gms/measurement/internal/zzab;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    .line 1175
    iget-wide v12, v5, Lcom/google/android/gms/measurement/internal/zzae;->zze:J

    .line 1176
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v5

    .line 1177
    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzaa;->zzb(Ljava/lang/String;)I

    move-result v5

    int-to-long v14, v5

    cmp-long v5, v12, v14

    if-lez v5, :cond_4e2

    .line 1178
    invoke-static {v11, v7}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;)V

    goto :goto_4e4

    :cond_4e2
    const/16 v21, 0x1

    .line 1180
    :goto_4e4
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5af

    if-eqz v8, :cond_5af

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v33

    .line 1184
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzx()J

    move-result-wide v34

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1185
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x0

    const/16 v41, 0x0

    .line 1186
    invoke-virtual/range {v33 .. v41}, Lcom/google/android/gms/measurement/internal/zzab;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v5

    .line 1187
    iget-wide v12, v5, Lcom/google/android/gms/measurement/internal/zzae;->zzc:J

    .line 1188
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v5

    .line 1189
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    .line 1190
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzas;->zzm:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v5, v7, v14}, Lcom/google/android/gms/measurement/internal/zzaa;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v5

    int-to-long v14, v5

    cmp-long v5, v12, v14

    if-lez v5, :cond_5af

    .line 1193
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 1194
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v7, "Too many conversions. Not logging as conversion. appId"

    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1195
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 1196
    invoke-virtual {v5, v7, v12}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    .line 1200
    :goto_542
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzb()I

    move-result v14

    if-ge v5, v14, :cond_56e

    .line 1201
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v14

    .line 1202
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_560

    .line 1204
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbm()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v12

    .line 1205
    check-cast v12, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move v13, v5

    goto :goto_56b

    .line 1207
    :cond_560
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_56b

    const/4 v7, 0x1

    :cond_56b
    :goto_56b
    add-int/lit8 v5, v5, 0x1

    goto :goto_542

    :cond_56e
    if-eqz v7, :cond_576

    if-eqz v12, :cond_576

    .line 1212
    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    goto :goto_5af

    :cond_576
    if-eqz v12, :cond_596

    .line 1216
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzds;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    .line 1217
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v5

    const-wide/16 v14, 0xa

    .line 1218
    invoke-virtual {v5, v14, v15}, Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zze$zza;

    move-result-object v5

    .line 1219
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    .line 1220
    invoke-virtual {v11, v13, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zze;)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    goto :goto_5af

    .line 1223
    :cond_596
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 1224
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v7, "Did not find conversion parameter. appId"

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1225
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1226
    invoke-virtual {v5, v7, v9}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5af
    :goto_5af
    if-eqz v8, :cond_676

    .line 1229
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zza()Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 1232
    :goto_5bd
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_5ed

    const-string v12, "value"

    .line 1233
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5d7

    move v8, v7

    goto :goto_5ea

    :cond_5d7
    const-string v12, "currency"

    .line 1235
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5ea

    move v9, v7

    :cond_5ea
    :goto_5ea
    add-int/lit8 v7, v7, 0x1

    goto :goto_5bd

    :cond_5ed
    const/4 v7, -0x1

    if-eq v8, v7, :cond_677

    .line 1239
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zze()Z

    move-result v7

    if-nez v7, :cond_625

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzg()Z

    move-result v7

    if-nez v7, :cond_625

    .line 1241
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 1242
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzk()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v7, "Value must be specified with a numeric type."

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    .line 1245
    invoke-static {v11, v10}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;)V

    const/16 v5, 0x12

    const-string v7, "value"

    .line 1246
    invoke-static {v11, v5, v7}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;ILjava/lang/String;)V

    goto :goto_676

    :cond_625
    const/4 v7, -0x1

    if-ne v9, v7, :cond_62b

    const/4 v5, 0x1

    const/4 v12, 0x3

    goto :goto_657

    .line 1251
    :cond_62b
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzd()Ljava/lang/String;

    move-result-object v5

    .line 1252
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v12, 0x3

    if-eq v9, v12, :cond_63e

    :goto_63c
    const/4 v5, 0x1

    goto :goto_657

    :cond_63e
    const/4 v9, 0x0

    .line 1254
    :goto_63f
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v9, v13, :cond_656

    .line 1255
    invoke-virtual {v5, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    .line 1256
    invoke-static {v13}, Ljava/lang/Character;->isLetter(I)Z

    move-result v14

    if-nez v14, :cond_650

    goto :goto_63c

    .line 1259
    :cond_650
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v9, v13

    goto :goto_63f

    :cond_656
    const/4 v5, 0x0

    :goto_657
    if-eqz v5, :cond_678

    .line 1263
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 1264
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzk()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v9, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 1265
    invoke-virtual {v5, v9}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    .line 1268
    invoke-static {v11, v10}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;)V

    const/16 v5, 0x13

    const-string v8, "currency"

    .line 1269
    invoke-static {v11, v5, v8}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;ILjava/lang/String;)V

    goto :goto_678

    :cond_676
    :goto_676
    const/4 v7, -0x1

    :cond_677
    const/4 v12, 0x3

    .line 1271
    :cond_678
    :goto_678
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v5

    .line 1272
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzas;->zzat:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v5

    if-eqz v5, :cond_811

    .line 1273
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e1

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    const-string v8, "_fr"

    invoke-static {v5, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v5

    if-nez v5, :cond_811

    if-eqz v17, :cond_6d9

    .line 1276
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzf()J

    move-result-wide v8

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzf()J

    move-result-wide v13

    sub-long/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v13, 0x3e8

    cmp-long v5, v8, v13

    if-gtz v5, :cond_6d9

    .line 1277
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzds;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    .line 1278
    invoke-direct {v1, v11, v5}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)Z

    move-result v8

    if-eqz v8, :cond_6d9

    .line 1281
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move/from16 v9, v30

    move-object/from16 v8, v32

    :goto_6d3
    const/16 v17, 0x0

    :goto_6d5
    const/16 v31, 0x0

    goto/16 :goto_815

    :cond_6d9
    move-object/from16 v31, v11

    move/from16 v9, v22

    :goto_6dd
    move-object/from16 v8, v32

    goto/16 :goto_815

    :cond_6e1
    const-string v5, "_vs"

    .line 1287
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_735

    .line 1288
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    move-object/from16 v8, v32

    invoke-static {v5, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v5

    if-nez v5, :cond_731

    if-eqz v31, :cond_729

    .line 1290
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzf()J

    move-result-wide v9

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzf()J

    move-result-wide v13

    sub-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v13, 0x3e8

    cmp-long v5, v9, v13

    if-gtz v5, :cond_729

    .line 1291
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/measurement/zzds;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    .line 1292
    invoke-direct {v1, v5, v11}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)Z

    move-result v9

    if-eqz v9, :cond_729

    move/from16 v9, v30

    .line 1295
    invoke-virtual {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    goto :goto_6d3

    :cond_729
    move/from16 v9, v30

    move-object/from16 v17, v11

    move/from16 v6, v22

    goto/16 :goto_815

    :cond_731
    move/from16 v9, v30

    goto/16 :goto_815

    :cond_735
    move/from16 v9, v30

    move-object/from16 v8, v32

    .line 1302
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v5

    .line 1303
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1304
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzas;->zzbs:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v5, v10, v13}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v5

    if-eqz v5, :cond_815

    const-string v5, "_ab"

    .line 1305
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_815

    .line 1306
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    invoke-static {v5, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v5

    if-nez v5, :cond_815

    if-eqz v31, :cond_815

    .line 1308
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzf()J

    move-result-wide v13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzf()J

    move-result-wide v24

    sub-long v13, v13, v24

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v24, 0xfa0

    cmp-long v5, v13, v24

    if-gtz v5, :cond_815

    .line 1309
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/internal/measurement/zzds;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    .line 1310
    invoke-direct {v1, v5, v11}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)V

    .line 1313
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1314
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1316
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    const-string v13, "_sn"

    invoke-static {v10, v13}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v10

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    .line 1319
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    const-string v14, "_sc"

    invoke-static {v13, v14}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v13

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    const-string v15, "_si"

    invoke-static {v14, v15}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v14

    if-eqz v10, :cond_7d0

    .line 1322
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzd()Ljava/lang/String;

    move-result-object v10

    goto :goto_7d2

    :cond_7d0
    move-object/from16 v10, v20

    .line 1323
    :goto_7d2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7e1

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v15

    const-string v7, "_sn"

    invoke-virtual {v15, v11, v7, v10}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7e1
    if-eqz v13, :cond_7e8

    .line 1325
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzd()Ljava/lang/String;

    move-result-object v7

    goto :goto_7ea

    :cond_7e8
    move-object/from16 v7, v20

    .line 1326
    :goto_7ea
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7f9

    .line 1327
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v10

    const-string v13, "_sc"

    invoke-virtual {v10, v11, v13, v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7f9
    if-eqz v14, :cond_80c

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v7

    const-string v10, "_si"

    .line 1330
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v7, v11, v10, v13}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1332
    :cond_80c
    invoke-virtual {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    goto/16 :goto_6d5

    :cond_811
    move/from16 v9, v30

    goto/16 :goto_6dd

    :cond_815
    :goto_815
    if-nez v29, :cond_877

    .line 1334
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_877

    .line 1335
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzb()I

    move-result v2

    if-nez v2, :cond_841

    .line 1337
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 1338
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v5, "Engagement event does not contain any parameters. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1339
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1340
    invoke-virtual {v2, v5, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_877

    .line 1342
    :cond_841
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v2

    .line 1343
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    invoke-virtual {v2, v5, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zzb(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_86f

    .line 1346
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 1347
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v5, "Engagement event does not include duration. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1348
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1349
    invoke-virtual {v2, v5, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_877

    .line 1350
    :cond_86f
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long v14, v27, v7

    move-wide/from16 v27, v14

    .line 1351
    :cond_877
    :goto_877
    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zzc:Ljava/util/List;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    move/from16 v7, v26

    invoke-interface {v2, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v22, 0x1

    .line 1353
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move v2, v9

    move/from16 v9, v21

    move-wide/from16 v14, v27

    :goto_890
    add-int/lit8 v8, v7, 0x1

    move v12, v2

    move-object/from16 v2, v20

    move/from16 v5, v29

    move-object/from16 v7, v31

    const/4 v13, 0x1

    goto/16 :goto_2a9

    :cond_89c
    move/from16 v29, v5

    move-object v8, v13

    move-wide/from16 v27, v14

    if-eqz v29, :cond_8f8

    move/from16 v6, v22

    move-wide/from16 v14, v27

    const/4 v5, 0x0

    :goto_8a8
    if-ge v5, v6, :cond_8fa

    .line 1357
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    move-result-object v7

    .line 1358
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8cb

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    const-string v9, "_fr"

    invoke-static {v7, v9}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v9

    if-eqz v9, :cond_8cb

    .line 1360
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzc(I)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_8f5

    .line 1365
    :cond_8cb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v7

    if-eqz v7, :cond_8f5

    .line 1367
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zze()Z

    move-result v9

    if-eqz v9, :cond_8e3

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_8e4

    :cond_8e3
    const/4 v7, 0x0

    :goto_8e4
    if-eqz v7, :cond_8f5

    .line 1368
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_8f5

    .line 1369
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v14, v9

    :cond_8f5
    :goto_8f5
    const/4 v7, 0x1

    add-int/2addr v5, v7

    goto :goto_8a8

    :cond_8f8
    move-wide/from16 v14, v27

    :cond_8fa
    const/4 v2, 0x0

    .line 1371
    invoke-direct {v1, v4, v14, v15, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;JZ)V

    .line 1373
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_906
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_920

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    const-string v6, "_s"

    .line 1374
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_906

    const/4 v2, 0x1

    goto :goto_921

    :cond_920
    const/4 v2, 0x0

    :goto_921
    if-eqz v2, :cond_930

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    .line 1380
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_se"

    .line 1381
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    :cond_930
    const-string v2, "_sid"

    .line 1383
    invoke-static {v4, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_93a

    const/4 v2, 0x1

    goto :goto_93b

    :cond_93a
    const/4 v2, 0x0

    :goto_93b
    if-eqz v2, :cond_942

    const/4 v2, 0x1

    .line 1385
    invoke-direct {v1, v4, v14, v15, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;JZ)V

    goto :goto_966

    :cond_942
    const-string v2, "_se"

    .line 1387
    invoke-static {v4, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_966

    .line 1389
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zze(I)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 1391
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 1392
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v5, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1393
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1394
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1395
    :cond_966
    :goto_966
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v2

    .line 1396
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v6, "Checking account type status for ad personalization signals"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzj()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zze(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f9

    .line 1398
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzke;->zzi()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v5

    if-eqz v5, :cond_9f9

    .line 1399
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v5

    if-eqz v5, :cond_9f9

    .line 1400
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzl()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzak;->zzj()Z

    move-result v5

    if-eqz v5, :cond_9f9

    .line 1401
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v6, "Turning off ad personalization due to account type"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 1402
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v5

    const-string v6, "_npa"

    .line 1403
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v5

    .line 1404
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzl()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzak;->zzh()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v2

    const-wide/16 v5, 0x1

    .line 1405
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zzb(J)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v2

    .line 1406
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    const/4 v5, 0x0

    .line 1408
    :goto_9d5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zze()I

    move-result v6

    if-ge v5, v6, :cond_9f3

    const-string v6, "_npa"

    .line 1410
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzd(I)Lcom/google/android/gms/internal/measurement/zzbw$zzk;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 1411
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f0

    .line 1412
    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zzk;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    const/4 v5, 0x1

    goto :goto_9f4

    :cond_9f0
    add-int/lit8 v5, v5, 0x1

    goto :goto_9d5

    :cond_9f3
    const/4 v5, 0x0

    :goto_9f4
    if-nez v5, :cond_9f9

    .line 1417
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzk;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 1419
    :cond_9f9
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v2

    .line 1421
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzas;->zzbn:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v2

    if-eqz v2, :cond_a0e

    .line 1422
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;)V

    .line 1424
    :cond_a0e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzm()Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v2

    .line 1425
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzf()Lcom/google/android/gms/measurement/internal/zzq;

    move-result-object v5

    .line 1426
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v6

    .line 1427
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza()Ljava/util/List;

    move-result-object v7

    .line 1428
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzd()Ljava/util/List;

    move-result-object v8

    .line 1429
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzf()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 1430
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzg()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1431
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzq;->zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v5

    .line 1432
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 1434
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v2

    .line 1435
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzaa;->zzg(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d85

    .line 1437
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1438
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v6

    .line 1441
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzko;->zzh()Ljava/security/SecureRandom;

    move-result-object v6

    const/4 v7, 0x0

    .line 1442
    :goto_a60
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb()I

    move-result v8

    if-ge v7, v8, :cond_d4f

    .line 1443
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    move-result-object v8

    .line 1444
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbm()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v8

    .line 1445
    check-cast v8, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;

    .line 1446
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    const-string v10, "_ep"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_af6

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    const-string v11, "_en"

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzkk;->zzb(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1449
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/zzam;

    if-nez v10, :cond_aab

    .line 1452
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v10

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v10

    .line 1453
    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    :cond_aab
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzam;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_aec

    .line 1455
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzam;->zzj:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmp-long v9, v11, v13

    if-lez v9, :cond_ac6

    .line 1456
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    const-string v11, "_sr"

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzam;->zzj:Ljava/lang/Long;

    .line 1457
    invoke-virtual {v9, v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1458
    :cond_ac6
    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzam;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_ae1

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/zzam;->zzk:Ljava/lang/Boolean;

    .line 1459
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_ae1

    .line 1460
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    const-string v10, "_efs"

    const-wide/16 v11, 0x1

    .line 1461
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v8, v10, v13}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1462
    :cond_ae1
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    :cond_aec
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    :goto_aef
    move-object/from16 v20, v3

    move-object v3, v4

    move-object v15, v6

    move v4, v7

    goto/16 :goto_d47

    .line 1466
    :cond_af6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1467
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzfr;->zzf(Ljava/lang/String;)J

    move-result-wide v9

    .line 1469
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    .line 1470
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzf()J

    move-result-wide v11

    invoke-static {v11, v12, v9, v10}, Lcom/google/android/gms/measurement/internal/zzko;->zza(JJ)J

    move-result-wide v11

    .line 1472
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    const-string v14, "_dbg"

    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 1473
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b81

    if-nez v15, :cond_b2a

    goto :goto_b81

    .line 1475
    :cond_b2a
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zzc;->zza()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_b32
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b81

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-object/from16 v18, v13

    .line 1476
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzb()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b7e

    .line 1477
    instance-of v13, v15, Ljava/lang/Long;

    if-eqz v13, :cond_b5c

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b7c

    :cond_b5c
    instance-of v13, v15, Ljava/lang/String;

    if-eqz v13, :cond_b6a

    .line 1478
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b7c

    :cond_b6a
    instance-of v13, v15, Ljava/lang/Double;

    if-eqz v13, :cond_b81

    .line 1479
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzh()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b81

    :cond_b7c
    const/4 v13, 0x1

    goto :goto_b82

    :cond_b7e
    move-object/from16 v13, v18

    goto :goto_b32

    :cond_b81
    :goto_b81
    const/4 v13, 0x0

    :goto_b82
    if-nez v13, :cond_b97

    .line 1485
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v13

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1486
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzfr;->zzd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto :goto_b98

    :cond_b97
    const/4 v13, 0x1

    :goto_b98
    if-gtz v13, :cond_bc1

    .line 1489
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v9

    .line 1490
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v9

    const-string v10, "Sample rate must be positive. event, rate"

    .line 1491
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1492
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    goto/16 :goto_aef

    .line 1495
    :cond_bc1
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzam;

    if-nez v14, :cond_c23

    .line 1498
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v14

    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v17, v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v15, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v14

    if-nez v14, :cond_c25

    .line 1501
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v9

    .line 1502
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v9

    const-string v10, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v14, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1503
    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v14

    .line 1504
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v15

    .line 1505
    invoke-virtual {v9, v10, v14, v15}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1506
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzam;

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1507
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v27

    .line 1508
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v28

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    const-wide/16 v33, 0x1

    .line 1509
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzf()J

    move-result-wide v35

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v26, v9

    invoke-direct/range {v26 .. v42}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-object v14, v9

    goto :goto_c25

    :cond_c23
    move-wide/from16 v17, v9

    .line 1511
    :cond_c25
    :goto_c25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    const-string v15, "_eid"

    invoke-virtual {v9, v10, v15}, Lcom/google/android/gms/measurement/internal/zzkk;->zzb(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_c3d

    const/4 v10, 0x1

    goto :goto_c3e

    :cond_c3d
    const/4 v10, 0x0

    .line 1512
    :goto_c3e
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v15, 0x1

    if-ne v13, v15, :cond_c73

    .line 1514
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_c6e

    iget-object v9, v14, Lcom/google/android/gms/measurement/internal/zzam;->zzi:Ljava/lang/Long;

    if-nez v9, :cond_c62

    iget-object v9, v14, Lcom/google/android/gms/measurement/internal/zzam;->zzj:Ljava/lang/Long;

    if-nez v9, :cond_c62

    iget-object v9, v14, Lcom/google/android/gms/measurement/internal/zzam;->zzk:Ljava/lang/Boolean;

    if-eqz v9, :cond_c6e

    :cond_c62
    const/4 v9, 0x0

    .line 1516
    invoke-virtual {v14, v9, v9, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v10

    .line 1517
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    :cond_c6e
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    goto/16 :goto_aef

    .line 1520
    :cond_c73
    invoke-virtual {v6, v13}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_cba

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v9

    const-string v15, "_sr"

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    int-to-long v3, v13

    .line 1522
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v8, v15, v13}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1523
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1524
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_ca5

    .line 1526
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v4, v3, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v14

    .line 1528
    :cond_ca5
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v3

    .line 1529
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzf()J

    move-result-wide v9

    invoke-virtual {v14, v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    .line 1530
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v15, v6

    move v4, v7

    move-object/from16 v3, v22

    goto/16 :goto_d44

    :cond_cba
    move-object/from16 v20, v3

    move-object/from16 v22, v4

    .line 1531
    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/zzam;->zzh:Ljava/lang/Long;

    if-eqz v3, :cond_ccc

    .line 1532
    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/zzam;->zzh:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v15, v6

    move/from16 v23, v7

    goto :goto_cde

    .line 1534
    :cond_ccc
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    .line 1535
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzg()J

    move-result-wide v3

    move-object v15, v6

    move/from16 v23, v7

    move-wide/from16 v6, v17

    invoke-static {v3, v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzko;->zza(JJ)J

    move-result-wide v3

    :goto_cde
    cmp-long v6, v3, v11

    if-eqz v6, :cond_d2e

    .line 1537
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v3

    const-string v4, "_efs"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v4, v9}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v3

    const-string v4, "_sr"

    int-to-long v6, v13

    .line 1539
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v8, v4, v9}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1540
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d1e

    .line 1543
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v4, 0x0

    invoke-virtual {v14, v4, v3, v6}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v14

    .line 1545
    :cond_d1e
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v3

    .line 1546
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzf()J

    move-result-wide v6

    invoke-virtual {v14, v6, v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzam;->zza(JJ)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v4

    .line 1547
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d40

    .line 1548
    :cond_d2e
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d40

    .line 1550
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v14, v9, v4, v4}, Lcom/google/android/gms/measurement/internal/zzam;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 1551
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d40
    :goto_d40
    move-object/from16 v3, v22

    move/from16 v4, v23

    .line 1552
    :goto_d44
    invoke-virtual {v3, v4, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(ILcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    :goto_d47
    add-int/lit8 v7, v4, 0x1

    move-object v4, v3

    move-object v6, v15

    move-object/from16 v3, v20

    goto/16 :goto_a60

    :cond_d4f
    move-object/from16 v20, v3

    move-object v3, v4

    .line 1554
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb()I

    move-result v6

    if-ge v4, v6, :cond_d63

    .line 1555
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 1556
    :cond_d63
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d88

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1557
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzam;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzam;)V

    goto :goto_d6b

    :cond_d85
    move-object/from16 v20, v3

    move-object v3, v4

    .line 1560
    :cond_d88
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v2

    .line 1562
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzbn:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v2

    if-nez v2, :cond_d9d

    .line 1563
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;)V

    :cond_d9d
    move-object/from16 v2, v20

    .line 1564
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v4

    .line 1565
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v5

    if-nez v5, :cond_dc9

    .line 1568
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 1569
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1570
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1571
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e24

    .line 1572
    :cond_dc9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb()I

    move-result v6

    if-lez v6, :cond_e24

    .line 1573
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzk()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_ddd

    .line 1575
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zze(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    goto :goto_de0

    .line 1576
    :cond_ddd
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzi()Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 1577
    :goto_de0
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzj()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_deb

    goto :goto_dec

    :cond_deb
    move-wide v6, v8

    :goto_dec
    cmp-long v8, v6, v10

    if-eqz v8, :cond_df4

    .line 1581
    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzd(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    goto :goto_df7

    .line 1582
    :cond_df4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 1583
    :goto_df7
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzv()V

    .line 1584
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzs()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzg(I)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 1585
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzf()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zza(J)V

    .line 1586
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzg()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(J)V

    .line 1587
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzg;->zzad()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e1a

    .line 1589
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    goto :goto_e1d

    .line 1590
    :cond_e1a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzk()Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 1591
    :goto_e1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 1592
    :cond_e24
    :goto_e24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb()I

    move-result v5

    if-lez v5, :cond_e8a

    .line 1594
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzu()Lcom/google/android/gms/measurement/internal/zzv;

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    move-result-object v5

    if-eqz v5, :cond_e4e

    .line 1599
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zza()Z

    move-result v6

    if-nez v6, :cond_e46

    goto :goto_e4e

    .line 1607
    :cond_e46
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbt$zzb;->zzb()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    goto :goto_e79

    .line 1600
    :cond_e4e
    :goto_e4e
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzam()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e60

    const-wide/16 v5, -0x1

    .line 1601
    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzi(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    goto :goto_e79

    .line 1603
    :cond_e60
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 1604
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zza:Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 1605
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1606
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1608
    :goto_e79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    move/from16 v12, v21

    invoke-virtual {v5, v3, v12}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg;Z)Z

    .line 1609
    :cond_e8a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkg$zza;->zzb:Ljava/util/List;

    .line 1610
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1612
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1613
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 1614
    :goto_ea1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_ebe

    if-eqz v6, :cond_eae

    const-string v7, ","

    .line 1616
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    :cond_eae
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_ea1

    :cond_ebe
    const-string v6, ")"

    .line 1619
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    .line 1621
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1622
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_ef1

    .line 1623
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 1624
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 1625
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1626
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1627
    invoke-virtual {v3, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1628
    :cond_ef1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    .line 1629
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_ef9
    .catchall {:try_start_3e3 .. :try_end_ef9} :catchall_f43

    :try_start_ef9
    const-string v5, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    .line 1630
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f07
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ef9 .. :try_end_f07} :catch_f08
    .catchall {:try_start_ef9 .. :try_end_f07} :catchall_f43

    goto :goto_f1b

    :catch_f08
    move-exception v0

    move-object v3, v0

    .line 1633
    :try_start_f0a
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 1634
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    .line 1635
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1636
    :goto_f1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_f22
    .catchall {:try_start_f0a .. :try_end_f22} :catchall_f43

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    const/4 v2, 0x1

    return v2

    .line 1639
    :cond_f2b
    :try_start_f2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_f32
    .catchall {:try_start_f2b .. :try_end_f32} :catchall_f43

    .line 1640
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    const/4 v2, 0x0

    return v2

    :catchall_f3b
    move-exception v0

    move-object v2, v0

    :goto_f3d
    if-eqz v9, :cond_f42

    .line 1071
    :try_start_f3f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1072
    :cond_f42
    throw v2
    :try_end_f43
    .catchall {:try_start_f3f .. :try_end_f43} :catchall_f43

    :catchall_f43
    move-exception v0

    move-object v2, v0

    .line 1642
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 1643
    throw v2

    return-void
.end method

.method private final zzaa()V
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2102
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2103
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzq:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzr:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzs:Z

    if-eqz v0, :cond_10

    goto :goto_3e

    .line 2113
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 2114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 2115
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzn:Ljava/util/List;

    if-nez v0, :cond_24

    return-void

    .line 2117
    :cond_24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 2118
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_28

    .line 2120
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 2105
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 2106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzq:Z

    .line 2107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzr:Z

    .line 2108
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzs:Z

    .line 2109
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 2110
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzab()Z
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 2175
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2177
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    .line 2178
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzbm:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_2c

    .line 2179
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzt:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2181
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 2182
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return v1

    .line 2187
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzn()Landroid/content/Context;

    move-result-object v0

    .line 2188
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 2189
    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2190
    :try_start_3d
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzu:Ljava/nio/channels/FileChannel;

    .line 2191
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzu:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzt:Ljava/nio/channels/FileLock;

    .line 2192
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzt:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_64

    .line 2194
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 2195
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return v1

    .line 2198
    :cond_64
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 2199
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_73} :catch_96
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_73} :catch_85
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_3d .. :try_end_73} :catch_74

    goto :goto_a6

    :catch_74
    move-exception v0

    .line 2213
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2214
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a6

    :catch_85
    move-exception v0

    .line 2208
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2209
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a6

    :catch_96
    move-exception v0

    .line 2203
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2204
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a6
    const/4 v0, 0x0

    return v0
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2122
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_2f

    .line 2124
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzn()Landroid/content/Context;

    move-result-object v0

    .line 2125
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 2126
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v1

    int-to-long v6, v0

    cmp-long p1, v1, v6

    if-nez p1, :cond_58

    .line 2127
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2130
    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzn()Landroid/content/Context;

    move-result-object v0

    .line 2131
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 2132
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 2133
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_57} :catch_5d

    return-object p1

    .line 2137
    :cond_58
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_5d
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;)V
    .registers 12

    .line 1708
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;->zzd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1709
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 1711
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v0

    .line 1712
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zze()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2f

    goto :goto_6b

    .line 1714
    :cond_2f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide v2

    .line 1716
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbw$zzc;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zze;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 1717
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_51

    .line 1718
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw$zze;->zzf()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1719
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1720
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object p2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_fr"

    invoke-virtual {p2, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzc$zza;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 33
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "_sno"

    .line 330
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 333
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 335
    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v7

    if-nez v7, :cond_26

    return-void

    .line 338
    :cond_26
    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v7, :cond_2e

    .line 339
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 341
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v7, v15, v8}, Lcom/google/android/gms/measurement/internal/zzfr;->zzb(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    const-string v14, "_err"

    const/4 v13, 0x0

    if-eqz v7, :cond_d9

    .line 343
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 344
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    .line 345
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 346
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v5

    .line 347
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blacklisted event. appId"

    .line 348
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzfr;->zzg(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/zzfr;->zzh(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    goto :goto_73

    :cond_71
    const/4 v3, 0x0

    goto :goto_74

    :cond_73
    :goto_73
    const/4 v3, 0x1

    :goto_74
    if-nez v3, :cond_8f

    .line 352
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    .line 354
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v7

    const/16 v9, 0xb

    .line 355
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v10, "_ev"

    move-object v8, v15

    .line 356
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_8f
    if-eqz v3, :cond_d8

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_d8

    .line 361
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzu()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzt()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 363
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    .line 364
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 365
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 366
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzy:Lcom/google/android/gms/measurement/internal/zzem;

    .line 367
    invoke-virtual {v5, v13}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 368
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_d8

    .line 371
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 372
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v4, "Fetching config for blacklisted app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 373
    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_d8
    return-void

    .line 375
    :cond_d9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjn;->zzb()Z

    move-result v7

    if-eqz v7, :cond_1ba

    .line 376
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v7

    .line 377
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzck:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-eqz v7, :cond_1ba

    .line 379
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzex;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    .line 380
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzal;->zzb()Landroid/os/Bundle;

    move-result-object v19

    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-wide/from16 v20, v11

    invoke-direct/range {v16 .. v21}, Lcom/google/android/gms/measurement/internal/zzex;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 383
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v2

    .line 385
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v8

    .line 387
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzas;->zzah:Lcom/google/android/gms/measurement/internal/zzem;

    const/16 v10, 0x19

    const/16 v11, 0x64

    invoke-virtual {v8, v15, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;II)I

    move-result v8

    .line 390
    new-instance v9, Ljava/util/TreeSet;

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzex;->zzd:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 391
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_12c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_199

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 392
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18b

    add-int/lit8 v10, v10, 0x1

    if-le v10, v8, :cond_18b

    const/16 v12, 0x30

    .line 395
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Event can\'t contain more than "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " params"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 396
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v13

    .line 397
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzet;->zzh()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v13

    move/from16 p1, v8

    .line 398
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v8

    move-object/from16 v17, v9

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzex;->zza:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 399
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v9

    move-object/from16 v18, v2

    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzex;->zzd:Landroid/os/Bundle;

    invoke-virtual {v9, v2}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-virtual {v13, v12, v8, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzex;->zzd:Landroid/os/Bundle;

    const/4 v8, 0x5

    invoke-static {v2, v8}, Lcom/google/android/gms/measurement/internal/zzko;->zzb(Landroid/os/Bundle;I)Z

    .line 402
    iget-object v2, v7, Lcom/google/android/gms/measurement/internal/zzex;->zzd:Landroid/os/Bundle;

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_191

    :cond_18b
    move-object/from16 v18, v2

    move/from16 p1, v8

    move-object/from16 v17, v9

    :goto_191
    move/from16 v8, p1

    move-object/from16 v9, v17

    move-object/from16 v2, v18

    const/4 v13, 0x0

    goto :goto_12c

    .line 405
    :cond_199
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzex;->zza:Ljava/lang/String;

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzal;

    new-instance v10, Landroid/os/Bundle;

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/zzex;->zzd:Landroid/os/Bundle;

    invoke-direct {v10, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v9, v10}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Landroid/os/Bundle;)V

    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/zzex;->zzb:Ljava/lang/String;

    iget-wide v11, v7, Lcom/google/android/gms/measurement/internal/zzex;->zzc:J

    move-object/from16 v23, v2

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-wide/from16 v27, v11

    invoke-direct/range {v23 .. v28}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzal;Ljava/lang/String;J)V

    .line 408
    :cond_1ba
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    const/4 v8, 0x2

    .line 409
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzet;->zza(I)Z

    move-result v7

    if-eqz v7, :cond_1e0

    .line 411
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 412
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    .line 413
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v9

    .line 414
    invoke-virtual {v9, v2}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Lcom/google/android/gms/measurement/internal/zzaq;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Logging event"

    invoke-virtual {v7, v10, v9}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    :cond_1e0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()V

    .line 416
    :try_start_1e7
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 417
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb()Z

    move-result v7

    if-eqz v7, :cond_200

    .line 418
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v7

    .line 419
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzas;->zzcj:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-eqz v7, :cond_200

    const/4 v7, 0x1

    goto :goto_201

    :cond_200
    const/4 v7, 0x0

    :goto_201
    const-string v9, "ecommerce_purchase"

    .line 420
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    .line 421
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_209
    .catchall {:try_start_1e7 .. :try_end_209} :catchall_9f8

    const-string v10, "refund"

    if-nez v9, :cond_224

    if-eqz v7, :cond_222

    :try_start_20f
    const-string v7, "purchase"

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    .line 422
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_224

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    .line 423
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_222

    goto :goto_224

    :cond_222
    const/4 v7, 0x0

    goto :goto_225

    :cond_224
    :goto_224
    const/4 v7, 0x1

    :goto_225
    const-string v9, "_iap"

    .line 424
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    .line 425
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_234

    if-eqz v7, :cond_232

    goto :goto_234

    :cond_232
    const/4 v9, 0x0

    goto :goto_235

    :cond_234
    :goto_234
    const/4 v9, 0x1

    :goto_235
    if-eqz v9, :cond_3dc

    .line 428
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    const-string v11, "currency"

    invoke-virtual {v9, v11}, Lcom/google/android/gms/measurement/internal/zzal;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_23f
    .catchall {:try_start_20f .. :try_end_23f} :catchall_9f8

    const-string v11, "value"

    if-eqz v7, :cond_2b6

    .line 430
    :try_start_243
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzal;->zzc(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-wide v17, 0x412e848000000000L    # 1000000.0

    mul-double v12, v12, v17

    const-wide/16 v19, 0x0

    cmpl-double v7, v12, v19

    if-nez v7, :cond_26a

    .line 432
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_264
    .catchall {:try_start_243 .. :try_end_264} :catchall_9f8

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v11, v17

    :cond_26a
    const-wide/high16 v17, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v7, v12, v17

    if-gtz v7, :cond_298

    const-wide/high16 v17, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v7, v12, v17

    if-ltz v7, :cond_298

    .line 434
    :try_start_276
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    .line 435
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb()Z

    move-result v7

    if-eqz v7, :cond_2c0

    .line 436
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v7

    .line 437
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzas;->zzcj:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-eqz v7, :cond_2c0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    .line 438
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c0

    neg-long v11, v11

    goto :goto_2c0

    .line 441
    :cond_298
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 442
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    const-string v8, "Data lost. Currency value is too big. appId"

    .line 443
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 444
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    .line 445
    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/16 v22, 0x0

    goto/16 :goto_3cb

    .line 448
    :cond_2b6
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/measurement/internal/zzal;->zzb(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 449
    :cond_2c0
    :goto_2c0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c6

    .line 450
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "[A-Z]{3}"

    .line 451
    invoke-virtual {v7, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3c6

    const-string v9, "_ltv_"

    .line 452
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2e5

    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2ea

    :cond_2e5
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2ea
    move-object v10, v7

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    invoke-virtual {v7, v15, v10}, Lcom/google/android/gms/measurement/internal/zzab;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v7

    if-eqz v7, :cond_326

    .line 454
    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-nez v9, :cond_2fc

    goto :goto_326

    .line 473
    :cond_2fc
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 474
    new-instance v17, Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    .line 475
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v13

    .line 476
    invoke-interface {v13}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    add-long/2addr v7, v11

    .line 477
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v7, v17

    move-object v8, v15

    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-wide/from16 v11, v18

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v6, v17

    goto :goto_38b

    :cond_326
    :goto_326
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    .line 456
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v9

    .line 458
    sget-object v13, Lcom/google/android/gms/measurement/internal/zzas;->zzad:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v9, v15, v13}, Lcom/google/android/gms/measurement/internal/zzaa;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v9

    sub-int/2addr v9, v6

    .line 460
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 462
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V
    :try_end_344
    .catchall {:try_start_276 .. :try_end_344} :catchall_9f8

    .line 463
    :try_start_344
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v8, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v6, 0x3

    .line 464
    new-array v6, v6, [Ljava/lang/String;

    aput-object v15, v6, v5

    const/16 v16, 0x1

    aput-object v15, v6, v16

    .line 465
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x2

    aput-object v9, v6, v16

    .line 466
    invoke-virtual {v13, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_35e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_344 .. :try_end_35e} :catch_35f
    .catchall {:try_start_344 .. :try_end_35e} :catchall_9f8

    goto :goto_372

    :catch_35f
    move-exception v0

    move-object v6, v0

    .line 469
    :try_start_361
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    const-string v8, "Error pruning currencies. appId"

    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 470
    :goto_372
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    .line 471
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    .line 472
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v7, v6

    move-object v8, v15

    move-wide/from16 v11, v16

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 478
    :goto_38b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzkp;)Z

    move-result v7

    if-nez v7, :cond_3c9

    .line 480
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 481
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    const-string v8, "Too many unique user properties are set. Ignoring user property. appId"

    .line 482
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 483
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v10

    .line 484
    iget-object v11, v6, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    .line 485
    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 487
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v7

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v15

    .line 489
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3c9

    :cond_3c6
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    :cond_3c9
    :goto_3c9
    const/16 v22, 0x1

    :goto_3cb
    if-nez v22, :cond_3df

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_3d4
    .catchall {:try_start_361 .. :try_end_3d4} :catchall_9f8

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    return-void

    :cond_3dc
    move-wide/from16 v23, v5

    const/4 v5, 0x0

    .line 495
    :cond_3df
    :try_start_3df
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;)Z

    move-result v6

    .line 496
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 498
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjt;->zzb()Z

    move-result v7

    const-wide/16 v19, 0x1

    if-eqz v7, :cond_412

    .line 499
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v7

    .line 500
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzas;->zzcf:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-eqz v7, :cond_412

    .line 502
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    .line 503
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Lcom/google/android/gms/measurement/internal/zzal;)J

    move-result-wide v7

    add-long v7, v7, v19

    move-wide v11, v7

    goto :goto_414

    :cond_412
    move-wide/from16 v11, v19

    .line 505
    :goto_414
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzx()J

    move-result-wide v8

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v15

    move v14, v6

    move-object/from16 p1, v15

    move/from16 v15, v16

    move/from16 v16, v18

    .line 507
    invoke-virtual/range {v7 .. v17}, Lcom/google/android/gms/measurement/internal/zzab;->zza(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v7

    .line 508
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzb:J

    .line 509
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzas;->zzj:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v14, 0x0

    .line 510
    invoke-virtual {v10, v14}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 511
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    const-wide/16 v12, 0x0

    cmp-long v15, v8, v12

    if-lez v15, :cond_473

    .line 514
    rem-long/2addr v8, v10

    cmp-long v2, v8, v19

    if-nez v2, :cond_464

    .line 516
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 517
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    .line 518
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzb:J

    .line 519
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 520
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 521
    :cond_464
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_46b
    .catchall {:try_start_3df .. :try_end_46b} :catchall_9f8

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    return-void

    :cond_473
    if-eqz v6, :cond_4c8

    .line 525
    :try_start_475
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzae;->zza:J

    .line 526
    sget-object v15, Lcom/google/android/gms/measurement/internal/zzas;->zzl:Lcom/google/android/gms/measurement/internal/zzem;

    .line 527
    invoke-virtual {v15, v14}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 528
    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v14, v15

    sub-long/2addr v8, v14

    cmp-long v14, v8, v12

    if-lez v14, :cond_4c8

    .line 531
    rem-long/2addr v8, v10

    cmp-long v3, v8, v19

    if-nez v3, :cond_4a7

    .line 533
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 534
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    .line 535
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v7, Lcom/google/android/gms/measurement/internal/zzae;->zza:J

    .line 536
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 537
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    :cond_4a7
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v7

    const/16 v9, 0x10

    const-string v10, "_ev"

    .line 540
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v8, p1

    .line 541
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_4c0
    .catchall {:try_start_475 .. :try_end_4c0} :catchall_9f8

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    return-void

    :cond_4c8
    if-eqz v18, :cond_517

    .line 546
    :try_start_4ca
    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    .line 547
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v10

    .line 548
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 549
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzas;->zzk:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v10, v11, v14}, Lcom/google/android/gms/measurement/internal/zzaa;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v10

    const v11, 0xf4240

    .line 550
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 551
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    cmp-long v10, v8, v12

    if-lez v10, :cond_517

    cmp-long v2, v8, v19

    if-nez v2, :cond_508

    .line 556
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 557
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    .line 558
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v7, Lcom/google/android/gms/measurement/internal/zzae;->zzd:J

    .line 559
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 560
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 561
    :cond_508
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_50f
    .catchall {:try_start_4ca .. :try_end_50f} :catchall_9f8

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    return-void

    .line 564
    :cond_517
    :try_start_517
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzal;->zzb()Landroid/os/Bundle;

    move-result-object v14

    .line 566
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v7

    const-string v8, "_o"

    .line 567
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v14, v8, v9}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v7

    move-object/from16 v15, p1

    .line 570
    invoke-virtual {v7, v15}, Lcom/google/android/gms/measurement/internal/zzko;->zzf(Ljava/lang/String;)Z

    move-result v7
    :try_end_536
    .catchall {:try_start_517 .. :try_end_536} :catchall_9f8

    const-string v11, "_r"

    if-eqz v7, :cond_556

    .line 572
    :try_start_53a
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v7

    const-string v8, "_dbg"

    .line 573
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v14, v8, v9}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 575
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v7

    .line 576
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v14, v11, v8}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_556
    const-string v7, "_s"

    .line 577
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57d

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 580
    invoke-virtual {v7, v8, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v7

    if-eqz v7, :cond_57d

    .line 581
    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Long;

    if-eqz v8, :cond_57d

    .line 583
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v8

    .line 584
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    invoke-virtual {v8, v14, v4, v7}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    :cond_57d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/measurement/internal/zzab;->zzc(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v4, v7, v12

    if-lez v4, :cond_5a0

    .line 588
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 589
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v9, "Data lost. Too many events stored on disk, deleted. appId"

    .line 590
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 591
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 592
    invoke-virtual {v4, v9, v10, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    :cond_5a0
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    iget-wide v12, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    const-wide/16 v18, 0x0

    move-object v7, v4

    move-object v2, v10

    move-object v10, v15

    move-object v5, v11

    move-object v11, v2

    move-object/from16 v16, v14

    move-object v2, v15

    const/16 v29, 0x0

    move-wide/from16 v14, v18

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Lcom/google/android/gms/measurement/internal/zzfx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v7

    if-nez v7, :cond_63e

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh(Ljava/lang/String;)J

    move-result-wide v7

    .line 598
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v9

    .line 599
    invoke-virtual {v9, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v11, v7, v9

    if-ltz v11, :cond_624

    if-eqz v6, :cond_624

    .line 601
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 602
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    const-string v5, "Too many event names used, ignoring event. appId, name, supported count"

    .line 603
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 604
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    .line 605
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 606
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v7

    .line 607
    invoke-virtual {v7, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 608
    invoke-virtual {v3, v5, v6, v4, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v2

    .line 612
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_61c
    .catchall {:try_start_53a .. :try_end_61c} :catchall_9f8

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    return-void

    .line 615
    :cond_624
    :try_start_624
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzam;

    iget-object v9, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zzb:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zzc:J

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v6

    move-object v8, v2

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/measurement/internal/zzam;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_64c

    .line 617
    :cond_63e
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    iget-wide v8, v7, Lcom/google/android/gms/measurement/internal/zzam;->zzf:J

    invoke-virtual {v4, v2, v8, v9}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzfx;J)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v4

    .line 618
    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zzc:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzam;->zza(J)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v6

    .line 619
    :goto_64c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzam;)V

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 623
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 626
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 627
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzbf()Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v2

    const-string v7, "android"

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v2

    .line 628
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_68b

    .line 629
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 630
    :cond_68b
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_698

    .line 631
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 632
    :cond_698
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6a5

    .line 633
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 634
    :cond_6a5
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    const-wide/32 v9, -0x80000000

    cmp-long v11, v7, v9

    if-eqz v11, :cond_6b4

    .line 635
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    long-to-int v8, v7

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzh(I)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 636
    :cond_6b4
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzf(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 637
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6c6

    .line 638
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 639
    :cond_6c6
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v7

    if-eqz v7, :cond_715

    .line 640
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v7

    .line 641
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-eqz v7, :cond_715

    .line 642
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6f3

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6f3

    .line 643
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 644
    :cond_6f3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_72c

    .line 645
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_72c

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    .line 646
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_72c

    .line 647
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    goto :goto_72c

    .line 648
    :cond_715
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_72c

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_72c

    .line 649
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 650
    :cond_72c
    :goto_72c
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_739

    .line 651
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzh(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 652
    :cond_739
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzt:J

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzk(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 654
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v7

    .line 655
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzas;->zzaw:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v8, v11}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-eqz v7, :cond_75b

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzkk;->zzf()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_75b

    .line 658
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 660
    :cond_75b
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v7

    .line 661
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzff;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_78e

    .line 662
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_78e

    .line 663
    iget-boolean v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzo:Z

    if-eqz v8, :cond_7f0

    .line 664
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 665
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_7f0

    .line 666
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    goto :goto_7f0

    .line 668
    :cond_78e
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzx()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v7

    .line 670
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfx;->zzn()Landroid/content/Context;

    move-result-object v8

    .line 671
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzak;->zza(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_7f0

    iget-boolean v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzp:Z

    if-eqz v7, :cond_7f0

    .line 673
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzn()Landroid/content/Context;

    move-result-object v7

    .line 674
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7d0

    .line 677
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 678
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    const-string v8, "null secure ID. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "null"

    goto :goto_7ed

    .line 680
    :cond_7d0
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7ed

    .line 682
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    .line 683
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    const-string v11, "empty secure ID. appId"

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    :cond_7ed
    :goto_7ed
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 686
    :cond_7f0
    :goto_7f0
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzx()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v7

    .line 687
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgr;->zzaa()V

    .line 688
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 689
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v7

    .line 690
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfx;->zzx()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v8

    .line 691
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgr;->zzaa()V

    .line 692
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 693
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v7

    .line 694
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfx;->zzx()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v8

    .line 695
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzak;->zzf()J

    move-result-wide v11

    long-to-int v8, v11

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzf(I)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v7

    .line 696
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfx;->zzx()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v8

    .line 697
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzak;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 699
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v7

    .line 700
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzcm:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-nez v7, :cond_83d

    .line 701
    iget-wide v7, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzl:J

    invoke-virtual {v2, v7, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 702
    :cond_83d
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzab()Z

    move-result v7

    if-eqz v7, :cond_853

    .line 703
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    .line 704
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_853

    move-object/from16 v7, v29

    .line 705
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 706
    :cond_853
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v7

    if-nez v7, :cond_8d4

    .line 708
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-direct {v7, v8, v11}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfx;Ljava/lang/String;)V

    .line 710
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v8

    .line 711
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzko;->zzk()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    .line 712
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    .line 713
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    .line 715
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v8

    .line 716
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 717
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(J)V

    .line 719
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zza(J)V

    .line 720
    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(J)V

    .line 721
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    .line 722
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(J)V

    .line 723
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    .line 724
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    .line 725
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzg;->zze(J)V

    .line 726
    iget-boolean v8, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Z)V

    .line 728
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v8

    .line 729
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzas;->zzcm:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v8

    if-nez v8, :cond_8c8

    .line 730
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzl:J

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    .line 731
    :cond_8c8
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzm;->zzt:J

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(J)V

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 733
    :cond_8d4
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8e5

    .line 734
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 735
    :cond_8e5
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8f6

    .line 736
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 737
    :cond_8f6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v7, 0x0

    .line 738
    :goto_901
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_938

    .line 739
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzk;->zzj()Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v8

    .line 740
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v8

    .line 741
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/zzkp;

    iget-wide v11, v11, Lcom/google/android/gms/measurement/internal/zzkp;->zzd:J

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;

    move-result-object v8

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v11

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    invoke-virtual {v11, v8, v12}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;Ljava/lang/Object;)V

    .line 743
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzk$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;
    :try_end_935
    .catchall {:try_start_624 .. :try_end_935} :catchall_9f8

    add-int/lit8 v7, v7, 0x1

    goto :goto_901

    .line 746
    :cond_938
    :try_start_938
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg;)J

    move-result-wide v2
    :try_end_948
    .catch Ljava/io/IOException; {:try_start_938 .. :try_end_948} :catch_9ac
    .catchall {:try_start_938 .. :try_end_948} :catchall_9f8

    .line 755
    :try_start_948
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    .line 756
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zze:Lcom/google/android/gms/measurement/internal/zzal;

    if-eqz v8, :cond_9a2

    .line 757
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zze:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzal;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_956
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_969

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 758
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_956

    goto :goto_9a3

    .line 761
    :cond_969
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v5

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Ljava/lang/String;

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v8, v11}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v11

    .line 764
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzx()J

    move-result-wide v12

    iget-object v14, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v11 .. v19}, Lcom/google/android/gms/measurement/internal/zzab;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzae;

    move-result-object v8

    if-eqz v5, :cond_9a2

    .line 765
    iget-wide v11, v8, Lcom/google/android/gms/measurement/internal/zzae;->zze:J

    .line 766
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v5

    .line 767
    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/google/android/gms/measurement/internal/zzaa;->zzb(Ljava/lang/String;)I

    move-result v5

    int-to-long v13, v5

    cmp-long v5, v11, v13

    if-gez v5, :cond_9a2

    goto :goto_9a3

    :cond_9a2
    const/4 v6, 0x0

    .line 768
    :goto_9a3
    invoke-virtual {v7, v4, v2, v3, v6}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzaj;JZ)Z

    move-result v2

    if-eqz v2, :cond_9c5

    .line 769
    iput-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzm:J

    goto :goto_9c5

    :catch_9ac
    move-exception v0

    move-object v3, v0

    .line 750
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 751
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 752
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzj()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 753
    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 770
    :cond_9c5
    :goto_9c5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_9cc
    .catchall {:try_start_948 .. :try_end_9cc} :catchall_9f8

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 775
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzz()V

    .line 777
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 778
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 779
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v23

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 780
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_9f8
    move-exception v0

    move-object v2, v0

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 774
    throw v2

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/measurement/internal/zzkd;)V
    .registers 4

    if-eqz p0, :cond_32

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 130
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zze(Lcom/google/android/gms/measurement/internal/zzm;)Z
    .registers 7

    .line 2989
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    .line 2990
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    .line 2991
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2992
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    .line 2993
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    .line 2994
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    return v1

    :cond_32
    :goto_32
    return v2

    .line 2996
    :cond_33
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_45

    :cond_44
    return v1

    :cond_45
    :goto_45
    return v2
.end method

.method private final zzt()Lcom/google/android/gms/measurement/internal/zzfd;
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zze:Lcom/google/android/gms/measurement/internal/zzfd;

    if-eqz v0, :cond_5

    return-object v0

    .line 106
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzv()Lcom/google/android/gms/measurement/internal/zzkc;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzf:Lcom/google/android/gms/measurement/internal/zzkc;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzkd;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzf:Lcom/google/android/gms/measurement/internal/zzkc;

    return-object v0
.end method

.method private final zzw()V
    .registers 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    return-void
.end method

.method private final zzx()J
    .registers 9

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 134
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzaa()V

    .line 138
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 139
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzff;->zzg:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3a

    const-wide/16 v3, 0x1

    .line 141
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzko;->zzh()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 142
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzff;->zzg:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(J)V

    :cond_3a
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    .line 145
    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzy()Z
    .registers 2

    .line 1830
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 1831
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 1832
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzy()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1833
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->d_()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    return v0

    :cond_21
    :goto_21
    const/4 v0, 0x1

    return v0
.end method

.method private final zzz()V
    .registers 22
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    .line 1963
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 1964
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 1965
    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzm:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4d

    .line 1967
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 1968
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    .line 1969
    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzm:J

    sub-long/2addr v1, v7

    .line 1970
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_4b

    .line 1973
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 1974
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    .line 1975
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 1976
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1977
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzt()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb()V

    .line 1978
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzv()Lcom/google/android/gms/measurement/internal/zzkc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzf()V

    return-void

    .line 1980
    :cond_4b
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzm:J

    .line 1981
    :cond_4d
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzag()Z

    move-result v1

    if-eqz v1, :cond_256

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzy()Z

    move-result v1

    if-nez v1, :cond_5d

    goto/16 :goto_256

    .line 1990
    :cond_5d
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 1991
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 1992
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzz:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v6, 0x0

    .line 1993
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1994
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 1997
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzab;->zzz()Z

    move-result v5

    if-nez v5, :cond_8f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzab;->zzk()Z

    move-result v5

    if-eqz v5, :cond_8d

    goto :goto_8f

    :cond_8d
    const/4 v5, 0x0

    goto :goto_90

    :cond_8f
    :goto_8f
    const/4 v5, 0x1

    :goto_90
    if-eqz v5, :cond_cc

    .line 2000
    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v10

    .line 2001
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzaa;->zzw()Ljava/lang/String;

    move-result-object v10

    .line 2002
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_bb

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_bb

    .line 2003
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzas;->zzu:Lcom/google/android/gms/measurement/internal/zzem;

    .line 2004
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2005
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_dc

    .line 2007
    :cond_bb
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzas;->zzt:Lcom/google/android/gms/measurement/internal/zzem;

    .line 2008
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2009
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_dc

    .line 2012
    :cond_cc
    sget-object v10, Lcom/google/android/gms/measurement/internal/zzas;->zzs:Lcom/google/android/gms/measurement/internal/zzem;

    .line 2013
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2014
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 2017
    :goto_dc
    iget-object v12, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v12

    .line 2018
    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()J

    move-result-wide v12

    .line 2020
    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v14

    .line 2021
    iget-object v14, v14, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()J

    move-result-wide v14

    .line 2022
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/measurement/internal/zzab;->zzw()J

    move-result-wide v9

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzab;->zzx()J

    move-result-wide v6

    .line 2024
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_113

    :cond_110
    move-wide v8, v3

    goto/16 :goto_189

    :cond_113
    sub-long/2addr v6, v1

    .line 2027
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    .line 2028
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    .line 2029
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    .line 2030
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_139

    cmp-long v5, v8, v3

    if-lez v5, :cond_139

    .line 2033
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    .line 2034
    :cond_139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(JJ)Z

    move-result v5

    if-nez v5, :cond_147

    add-long/2addr v8, v12

    goto :goto_148

    :cond_147
    move-wide v8, v10

    :goto_148
    cmp-long v5, v1, v3

    if-eqz v5, :cond_189

    cmp-long v5, v1, v6

    if-ltz v5, :cond_189

    const/4 v5, 0x0

    :goto_151
    const/16 v6, 0x14

    .line 2039
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzab:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v10, 0x0

    .line 2040
    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2041
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x0

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_110

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    .line 2045
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzaa:Lcom/google/android/gms/measurement/internal/zzem;

    .line 2046
    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 2047
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    mul-long v12, v12, v6

    add-long/2addr v8, v12

    cmp-long v6, v8, v1

    if-lez v6, :cond_186

    goto :goto_189

    :cond_186
    add-int/lit8 v5, v5, 0x1

    goto :goto_151

    :cond_189
    :goto_189
    cmp-long v1, v8, v3

    if-nez v1, :cond_1ab

    .line 2057
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2058
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 2059
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzt()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb()V

    .line 2060
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzv()Lcom/google/android/gms/measurement/internal/zzkc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzf()V

    return-void

    .line 2062
    :cond_1ab
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzf()Z

    move-result v1

    if-nez v1, :cond_1d3

    .line 2064
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2065
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 2066
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzt()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zza()V

    .line 2067
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzv()Lcom/google/android/gms/measurement/internal/zzkc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzf()V

    return-void

    .line 2070
    :cond_1d3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v1

    .line 2071
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzff;->zze:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()J

    move-result-wide v1

    .line 2072
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzq:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v6, 0x0

    .line 2073
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 2074
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 2076
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(JJ)Z

    move-result v7

    if-nez v7, :cond_1ff

    add-long/2addr v1, v5

    .line 2077
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2078
    :cond_1ff
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzt()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb()V

    .line 2080
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 2081
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v8, v1

    cmp-long v1, v8, v3

    if-gtz v1, :cond_23b

    .line 2083
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzas;->zzv:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v2, 0x0

    .line 2084
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2085
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 2088
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v1

    .line 2089
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfj;

    .line 2090
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 2091
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(J)V

    .line 2093
    :cond_23b
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2094
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2095
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzv()Lcom/google/android/gms/measurement/internal/zzkc;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzkc;->zza(J)V

    return-void

    .line 1983
    :cond_256
    :goto_256
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 1984
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 1985
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzt()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzb()V

    .line 1986
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzv()Lcom/google/android/gms/measurement/internal/zzkc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkc;->zzf()V

    return-void
.end method


# virtual methods
.method protected final zza()V
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzv()V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    .line 87
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_37

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    .line 90
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfj;

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 92
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(J)V

    .line 93
    :cond_37
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzz()V

    return-void
.end method

.method final zza(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .registers 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1745
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 1746
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    const/4 p4, 0x0

    if-nez p3, :cond_b

    .line 1748
    :try_start_9
    new-array p3, p4, [B

    .line 1749
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzv:Ljava/util/List;

    const/4 v1, 0x0

    .line 1750
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzv:Ljava/util/List;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_17d

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_19

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_124

    :cond_19
    if-nez p2, :cond_124

    .line 1753
    :try_start_1b
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p2

    .line 1754
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfj;

    .line 1755
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    .line 1756
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(J)V

    .line 1758
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p2

    .line 1759
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Lcom/google/android/gms/measurement/internal/zzfj;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(J)V

    .line 1760
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzz()V

    .line 1762
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    .line 1763
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    .line 1764
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1765
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()V
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_5f} :catch_f2
    .catchall {:try_start_1b .. :try_end_5f} :catchall_17d

    .line 1766
    :try_start_5f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ba

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_e9

    .line 1767
    :try_start_6f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1768
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 1769
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 1770
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1771
    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, p4
    :try_end_89
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_89} :catch_ab
    .catchall {:try_start_6f .. :try_end_89} :catchall_e9

    :try_start_89
    const-string v6, "queue"

    const-string v7, "rowid=?"

    .line 1772
    invoke-virtual {v0, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_94

    goto :goto_63

    .line 1774
    :cond_94
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v2, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_89 .. :try_end_9c} :catch_9c
    .catchall {:try_start_89 .. :try_end_9c} :catchall_e9

    :catch_9c
    move-exception v0

    .line 1777
    :try_start_9d
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p3

    const-string v2, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1778
    throw v0
    :try_end_ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9d .. :try_end_ab} :catch_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_e9

    :catch_ab
    move-exception p3

    .line 1780
    :try_start_ac
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzw:Ljava/util/List;

    if-eqz v0, :cond_b9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzw:Ljava/util/List;

    .line 1781
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b9

    goto :goto_63

    .line 1782
    :cond_b9
    throw p3

    .line 1783
    :cond_ba
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_c1
    .catchall {:try_start_ac .. :try_end_c1} :catchall_e9

    .line 1784
    :try_start_c1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 1788
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzw:Ljava/util/List;

    .line 1789
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzf()Z

    move-result p1

    if-eqz p1, :cond_de

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzy()Z

    move-result p1

    if-eqz p1, :cond_de

    .line 1790
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzl()V

    goto :goto_e5

    :cond_de
    const-wide/16 p1, -0x1

    .line 1791
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzx:J

    .line 1792
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzz()V

    .line 1793
    :goto_e5
    iput-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzm:J

    goto/16 :goto_177

    :catchall_e9
    move-exception p1

    .line 1786
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 1787
    throw p1
    :try_end_f2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c1 .. :try_end_f2} :catch_f2
    .catchall {:try_start_c1 .. :try_end_f2} :catchall_17d

    :catch_f2
    move-exception p1

    .line 1797
    :try_start_f3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    .line 1798
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1800
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    .line 1801
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzm:J

    .line 1803
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 1804
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzm:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_177

    .line 1807
    :cond_124
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p3

    .line 1808
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 1809
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1811
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p2

    .line 1812
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Lcom/google/android/gms/measurement/internal/zzfj;

    .line 1813
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 1814
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_156

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_155

    goto :goto_156

    :cond_155
    const/4 v3, 0x0

    :cond_156
    :goto_156
    if-eqz v3, :cond_16d

    .line 1818
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p1

    .line 1819
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzff;->zze:Lcom/google/android/gms/measurement/internal/zzfj;

    .line 1820
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 1821
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(J)V

    .line 1822
    :cond_16d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/util/List;)V

    .line 1823
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzz()V
    :try_end_177
    .catchall {:try_start_f3 .. :try_end_177} :catchall_17d

    .line 1824
    :goto_177
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzr:Z

    .line 1825
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    return-void

    :catchall_17d
    move-exception p1

    .line 1827
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzr:Z

    .line 1828
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    .line 1829
    throw p1

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 22
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 188
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 192
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 193
    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v4

    if-nez v4, :cond_22

    return-void

    .line 196
    :cond_22
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v4, :cond_2a

    .line 197
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 200
    :cond_2a
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v4

    .line 201
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzbc:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v4

    if-eqz v4, :cond_7e

    .line 202
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzu:Ljava/util/List;

    if-eqz v4, :cond_7e

    .line 203
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzu:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 204
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzal;->zzb()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v5, 0x1

    const-string v7, "ga_safelisted"

    .line 205
    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 206
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {v15, v4}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzal;Ljava/lang/String;J)V

    move-object v0, v5

    goto :goto_7e

    .line 209
    :cond_6a
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zzc:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 211
    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 213
    :cond_7e
    :goto_7e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()V

    .line 215
    :try_start_85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    .line 216
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 218
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmp-long v8, v11, v6

    if-gez v8, :cond_b5

    .line 220
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 221
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v8, "Invalid time querying timed out conditional properties"

    .line 222
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 223
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 224
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_c5

    :cond_b5
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 227
    new-array v9, v5, [Ljava/lang/String;

    aput-object v3, v9, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v14

    .line 228
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 229
    :goto_c5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c9
    :goto_c9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_118

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzy;

    if-eqz v8, :cond_c9

    .line 232
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v9

    .line 233
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v9

    const-string v10, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 234
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v14

    .line 235
    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v13, v13, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 236
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object v14

    .line 237
    invoke-virtual {v9, v10, v15, v13, v14}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzy;->zzg:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v9, :cond_10a

    .line 239
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/zzy;->zzg:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v9, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;J)V

    invoke-direct {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 240
    :cond_10a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v9, v3, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto :goto_c9

    .line 243
    :cond_118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    .line 244
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 246
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_143

    .line 248
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 249
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v8, "Invalid time querying expired conditional properties"

    .line 250
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 251
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 252
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_155

    :cond_143
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 255
    new-array v9, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    .line 256
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 258
    :goto_155
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_162
    :goto_162
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzy;

    if-eqz v9, :cond_162

    .line 262
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v10

    .line 263
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v10

    const-string v13, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 264
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v15

    .line 265
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 266
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object v15

    .line 267
    invoke-virtual {v10, v13, v14, v5, v15}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    iget-object v10, v9, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v5, v3, v10}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzy;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v5, :cond_1a9

    .line 270
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzy;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_1a9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v5, v3, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_162

    .line 273
    :cond_1b6
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1bd
    if-ge v5, v4, :cond_1d0

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    check-cast v9, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 274
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v10, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;J)V

    invoke-direct {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_1bd

    .line 277
    :cond_1d0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    .line 278
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 281
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    cmp-long v8, v11, v6

    if-gez v8, :cond_209

    .line 283
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    .line 284
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v6

    const-string v7, "Invalid time querying triggered conditional properties"

    .line 285
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 286
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgs;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzer;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 288
    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    goto :goto_21f

    :cond_209
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v7, 0x3

    .line 291
    new-array v7, v7, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v7, v13

    const/4 v3, 0x1

    aput-object v5, v7, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v7, v5

    .line 292
    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 294
    :goto_21f
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22c
    :goto_22c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2bb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/google/android/gms/measurement/internal/zzy;

    if-eqz v15, :cond_22c

    .line 297
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 298
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v5, v15, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    .line 299
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object v16

    move-object v4, v10

    move-wide v8, v11

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzkp;)Z

    move-result v4

    if-eqz v4, :cond_27b

    .line 303
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 304
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v5, "User property triggered"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 305
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    .line 306
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    .line 307
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_29e

    .line 309
    :cond_27b
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 310
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v5, "Too many active user properties, ignoring"

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 311
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 312
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v7

    .line 313
    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v13, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    .line 314
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    :goto_29e
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzy;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v4, :cond_2a7

    .line 316
    iget-object v4, v15, Lcom/google/android/gms/measurement/internal/zzy;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_2a7
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-direct {v4, v13}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    iput-object v4, v15, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    const/4 v4, 0x1

    .line 318
    iput-boolean v4, v15, Lcom/google/android/gms/measurement/internal/zzy;->zze:Z

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzy;)Z

    const/4 v13, 0x0

    goto/16 :goto_22c

    .line 321
    :cond_2bb
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 322
    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_2c5
    if-ge v3, v0, :cond_2d8

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzaq;

    .line 323
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaq;

    invoke-direct {v5, v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;J)V

    invoke-direct {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_2c5

    .line 325
    :cond_2d8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_2df
    .catchall {:try_start_85 .. :try_end_2df} :catchall_2e7

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    return-void

    :catchall_2e7
    move-exception v0

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 329
    throw v0

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzaq;Ljava/lang/String;)V
    .registers 36
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v2

    if-eqz v2, :cond_e9

    .line 147
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto/16 :goto_e9

    .line 152
    :cond_1c
    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzg;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_40

    .line 154
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    const-string v5, "_ui"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 156
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 157
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Could not find package. appId"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5a

    .line 158
    :cond_40
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 160
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    .line 162
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 163
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 165
    :cond_5a
    :goto_5a
    new-instance v15, Lcom/google/android/gms/measurement/internal/zzm;

    .line 166
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v6

    .line 169
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzn()Ljava/lang/String;

    move-result-object v8

    .line 170
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()J

    move-result-wide v9

    .line 171
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzp()J

    move-result-wide v11

    .line 172
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzr()Z

    move-result v14

    const/16 v16, 0x0

    .line 173
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzi()Ljava/lang/String;

    move-result-object v17

    .line 174
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzae()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    .line 175
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzaf()Z

    move-result v23

    .line 176
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzag()Z

    move-result v24

    const/16 v25, 0x0

    .line 177
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v26

    .line 178
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzah()Ljava/lang/Boolean;

    move-result-object v27

    .line 179
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzq()J

    move-result-wide v28

    .line 180
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzai()Ljava/util/List;

    move-result-object v30

    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v31

    if-eqz v31, :cond_bd

    .line 182
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v13

    .line 183
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v13, v3, v0}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 184
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzg()Ljava/lang/String;

    move-result-object v0

    goto :goto_be

    :cond_bd
    const/4 v0, 0x0

    :goto_be
    move-object v2, v15

    move-object/from16 v3, p2

    const/4 v13, 0x0

    move-object/from16 v32, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-wide/from16 v27, v28

    move-object/from16 v29, v30

    move-object/from16 v30, v0

    .line 185
    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/measurement/internal/zzm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v2, v32

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    return-void

    .line 149
    :cond_e9
    :goto_e9
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    move-object/from16 v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzkd;)V
    .registers 2

    .line 2431
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzo:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzo:I

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 15
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2295
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2296
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 2297
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zze(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 2299
    :cond_d
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v0, :cond_15

    .line 2300
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 2303
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    .line 2304
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzko;->zzc(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_4d

    .line 2307
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    .line 2308
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    .line 2310
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    .line 2311
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    if-eqz v1, :cond_3e

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_3f

    :cond_3e
    const/4 v7, 0x0

    .line 2313
    :goto_3f
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v2

    .line 2314
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v5, "_ev"

    .line 2315
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2318
    :cond_4d
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v3

    .line 2319
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzko;->zzb(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_91

    .line 2322
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    .line 2323
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    .line 2325
    invoke-static {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    .line 2326
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_82

    .line 2328
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_78

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_82

    .line 2329
    :cond_78
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2330
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v11, v0

    goto :goto_83

    :cond_82
    const/4 v11, 0x0

    .line 2332
    :goto_83
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v6

    .line 2333
    iget-object v7, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v9, "_ev"

    .line 2334
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 2337
    :cond_91
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    .line 2338
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    .line 2339
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzko;->zzc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a4

    return-void

    .line 2342
    :cond_a4
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    const-string v2, "_sid"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    .line 2343
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:J

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 2346
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v8, "_sno"

    .line 2347
    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v3

    if-eqz v3, :cond_d1

    .line 2348
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_d1

    .line 2349
    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_107

    :cond_d1
    if-eqz v3, :cond_e4

    .line 2352
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    .line 2353
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v6

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    const-string v8, "Retrieved last session number from database does not contain a valid (long) value"

    .line 2354
    invoke-virtual {v6, v8, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2356
    :cond_e4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    iget-object v6, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v8, "_s"

    .line 2357
    invoke-virtual {v3, v6, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v3

    if-eqz v3, :cond_107

    .line 2359
    iget-wide v1, v3, Lcom/google/android/gms/measurement/internal/zzam;->zzc:J

    .line 2361
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 2362
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v3

    .line 2363
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "Backfill the session number. Last used session number"

    invoke-virtual {v3, v8, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_107
    :goto_107
    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    .line 2365
    new-instance v8, Lcom/google/android/gms/measurement/internal/zzkn;

    .line 2366
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "_sno"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2367
    invoke-virtual {p0, v8, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 2368
    :cond_119
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v4, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2370
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 2371
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    .line 2372
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 2373
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setting user property"

    .line 2374
    invoke-virtual {p1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2375
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()V

    .line 2376
    :try_start_14a
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2377
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzkp;)Z

    move-result p1

    .line 2378
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V

    if-nez p1, :cond_18b

    .line 2381
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 2382
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    .line 2383
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 2384
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    .line 2385
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2387
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    .line 2388
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2389
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_18b
    .catchall {:try_start_14a .. :try_end_18b} :catchall_193

    .line 2390
    :cond_18b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    return-void

    :catchall_193
    move-exception p1

    .line 2392
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 2393
    throw p1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "app_id=?"

    .line 2267
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzv:Ljava/util/List;

    if-eqz v1, :cond_14

    .line 2268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzw:Ljava/util/List;

    .line 2269
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzw:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzv:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2270
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 2271
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2272
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 2273
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 2274
    :try_start_23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    .line 2275
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v6, "apps"

    .line 2276
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, "events"

    .line 2277
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "user_attributes"

    .line 2278
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "conditional_properties"

    .line 2279
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events"

    .line 2280
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "raw_events_metadata"

    .line 2281
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "queue"

    .line 2282
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "audience_filter_values"

    .line 2283
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v6, v5

    const-string v5, "main_event_params"

    .line 2284
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    if-lez v6, :cond_92

    .line 2286
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_7f} :catch_80

    goto :goto_92

    :catch_80
    move-exception v0

    .line 2289
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2290
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    .line 2291
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2292
    :cond_92
    :goto_92
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-eqz v0, :cond_99

    .line 2293
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_99
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzy;)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2709
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2711
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzy;Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_b
    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzy;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 13
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2713
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2714
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2715
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2716
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2717
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2718
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 2720
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zze(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v0

    if-nez v0, :cond_26

    return-void

    .line 2722
    :cond_26
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v0, :cond_2e

    .line 2723
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 2725
    :cond_2e
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzy;-><init>(Lcom/google/android/gms/measurement/internal/zzy;)V

    const/4 p1, 0x0

    .line 2726
    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zze:Z

    .line 2727
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()V

    .line 2730
    :try_start_3d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 2731
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    .line 2733
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 2734
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    .line 2735
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 2736
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 2737
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_78
    const/4 v2, 0x1

    if-eqz v1, :cond_b2

    .line 2738
    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzy;->zze:Z

    if-eqz v3, :cond_b2

    .line 2739
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    .line 2740
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzd:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:J

    .line 2741
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzh:J

    iput-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzh:J

    .line 2742
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzf:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzf:Ljava/lang/String;

    .line 2743
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 2744
    iget-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzy;->zze:Z

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzy;->zze:Z

    .line 2745
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-wide v5, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:J

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 2746
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    goto :goto_d5

    .line 2747
    :cond_b2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 2748
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:J

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 2749
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zze:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 2750
    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzy;->zze:Z

    const/4 p1, 0x1

    .line 2752
    :cond_d5
    :goto_d5
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zze:Z

    if-eqz v1, :cond_14c

    .line 2753
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 2754
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkn;->zzb:J

    .line 2755
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zzkp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 2756
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzkp;)Z

    move-result v1

    if-eqz v1, :cond_117

    .line 2759
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2760
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 2761
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 2762
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    .line 2763
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13a

    .line 2765
    :cond_117
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2766
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 2767
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2768
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 2769
    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkp;->zzc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    .line 2770
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_13a
    if-eqz p1, :cond_14c

    .line 2771
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz p1, :cond_14c

    .line 2772
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzi:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzd:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;J)V

    .line 2773
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 2774
    :cond_14c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzy;)Z

    move-result p1

    if-eqz p1, :cond_17c

    .line 2777
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 2778
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 2779
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 2780
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 2781
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2782
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a5

    .line 2784
    :cond_17c
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 2785
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 2786
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2787
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 2788
    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    .line 2789
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkn;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 2790
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2791
    :goto_1a5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_1ac
    .catchall {:try_start_3d .. :try_end_1ac} :catchall_1b4

    .line 2792
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    return-void

    :catchall_1b4
    move-exception p1

    .line 2794
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 2795
    throw p1
.end method

.method final zza(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2097
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2098
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzn:Ljava/util/List;

    if-nez v0, :cond_e

    .line 2099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzn:Ljava/util/List;

    .line 2100
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1879
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 1880
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 1881
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_e

    .line 1883
    :try_start_c
    new-array p4, v0, [B

    .line 1885
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 1886
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1887
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_196

    .line 1888
    :try_start_29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    const/4 v4, 0x1

    if-eq p2, v2, :cond_3e

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_3e

    if-ne p2, v3, :cond_42

    :cond_3e
    if-nez p3, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    if-nez v1, :cond_5a

    .line 1892
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    .line 1893
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    .line 1894
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_179

    :cond_5a
    const/16 v5, 0x194

    if-nez v2, :cond_ca

    if-ne p2, v5, :cond_61

    goto :goto_ca

    .line 1932
    :cond_61
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    .line 1933
    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(J)V

    .line 1934
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 1936
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p4

    .line 1937
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1938
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzc(Ljava/lang/String;)V

    .line 1940
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p1

    .line 1941
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Lcom/google/android/gms/measurement/internal/zzfj;

    .line 1942
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 1943
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_ae

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_ad

    goto :goto_ae

    :cond_ad
    const/4 v4, 0x0

    :cond_ae
    :goto_ae
    if-eqz v4, :cond_c5

    .line 1947
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p1

    .line 1948
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzff;->zze:Lcom/google/android/gms/measurement/internal/zzfj;

    .line 1949
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    .line 1950
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(J)V

    .line 1951
    :cond_c5
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzz()V

    goto/16 :goto_179

    :cond_ca
    :goto_ca
    const/4 p3, 0x0

    if-eqz p5, :cond_d6

    const-string v2, "Last-Modified"

    .line 1896
    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_d7

    :cond_d6
    move-object p5, p3

    :goto_d7
    if-eqz p5, :cond_e6

    .line 1897
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e6

    .line 1898
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_e7

    :cond_e6
    move-object p5, p3

    :goto_e7
    if-eq p2, v5, :cond_103

    if-ne p2, v3, :cond_ec

    goto :goto_103

    .line 1907
    :cond_ec
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_f4
    .catchall {:try_start_29 .. :try_end_f4} :catchall_18d

    if-nez p3, :cond_124

    .line 1908
    :try_start_f6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V
    :try_end_fd
    .catchall {:try_start_f6 .. :try_end_fd} :catchall_196

    .line 1909
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzq:Z

    .line 1910
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    return-void

    .line 1901
    :cond_103
    :goto_103
    :try_start_103
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbt$zzb;

    move-result-object p5

    if-nez p5, :cond_124

    .line 1902
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/measurement/internal/zzfr;->zza(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_115
    .catchall {:try_start_103 .. :try_end_115} :catchall_18d

    if-nez p3, :cond_124

    .line 1903
    :try_start_117
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V
    :try_end_11e
    .catchall {:try_start_117 .. :try_end_11e} :catchall_196

    .line 1904
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzq:Z

    .line 1905
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    return-void

    .line 1913
    :cond_124
    :try_start_124
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    .line 1914
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(J)V

    .line 1915
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    if-ne p2, v5, :cond_14a

    .line 1918
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    .line 1919
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzk()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 1920
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_162

    .line 1922
    :cond_14a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 1923
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 1924
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    .line 1925
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1926
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1927
    :goto_162
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfa;->zzf()Z

    move-result p1

    if-eqz p1, :cond_176

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzy()Z

    move-result p1

    if-eqz p1, :cond_176

    .line 1928
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzl()V

    goto :goto_179

    .line 1929
    :cond_176
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzz()V

    .line 1952
    :goto_179
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_180
    .catchall {:try_start_124 .. :try_end_180} :catchall_18d

    .line 1953
    :try_start_180
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V
    :try_end_187
    .catchall {:try_start_180 .. :try_end_187} :catchall_196

    .line 1957
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzq:Z

    .line 1958
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    return-void

    :catchall_18d
    move-exception p1

    .line 1955
    :try_start_18e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 1956
    throw p1
    :try_end_196
    .catchall {:try_start_18e .. :try_end_196} :catchall_196

    :catchall_196
    move-exception p1

    .line 1960
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzq:Z

    .line 1961
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    .line 1962
    throw p1
.end method

.method final zza(Z)V
    .registers 2

    .line 2987
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzz()V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2394
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2395
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 2396
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zze(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 2398
    :cond_d
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v0, :cond_15

    .line 2399
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 2401
    :cond_15
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    if-eqz v0, :cond_5b

    .line 2403
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 2404
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 2405
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkn;

    .line 2406
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 2407
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 2408
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    const-wide/16 v0, 0x1

    goto :goto_4b

    :cond_49
    const-wide/16 v0, 0x0

    :goto_4b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2409
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzm;)V

    return-void

    .line 2412
    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 2413
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    .line 2414
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 2415
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 2416
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2417
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()V

    .line 2418
    :try_start_7d
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2419
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V

    .line 2422
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    .line 2423
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string v0, "User property removed"

    .line 2424
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v1

    .line 2425
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2426
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ad
    .catchall {:try_start_7d .. :try_end_ad} :catchall_b5

    .line 2427
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    return-void

    :catchall_b5
    move-exception p1

    .line 2429
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 2430
    throw p1
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 23
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sys"

    const-string v4, "_pfo"

    const-string v5, "_uwa"

    const-string v0, "app_id=?"

    .line 2436
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2437
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 2438
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2440
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkg;->zze(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v6

    if-nez v6, :cond_21

    return-void

    .line 2442
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_54

    .line 2444
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_54

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    .line 2445
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_54

    .line 2446
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(J)V

    .line 2447
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    .line 2448
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc()Lcom/google/android/gms/measurement/internal/zzfr;

    move-result-object v6

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/google/android/gms/measurement/internal/zzfr;->zzd(Ljava/lang/String;)V

    .line 2449
    :cond_54
    iget-boolean v6, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v6, :cond_5c

    .line 2450
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 2452
    :cond_5c
    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzm:J

    cmp-long v6, v9, v7

    if-nez v6, :cond_6c

    .line 2455
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    .line 2456
    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v9

    .line 2458
    :cond_6c
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzx()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v6

    .line 2459
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzak;->zzi()V

    .line 2460
    iget v6, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzn:I

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_97

    if-eq v6, v13, :cond_97

    .line 2463
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v11

    .line 2464
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 2465
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 2466
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v14, "Incorrect app type, assuming installed app. appId, appType"

    .line 2467
    invoke-virtual {v11, v14, v12, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    .line 2469
    :cond_97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()V

    .line 2471
    :try_start_9e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v11

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v14, "_npa"

    .line 2472
    invoke-virtual {v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzab;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzkp;

    move-result-object v14

    if-eqz v14, :cond_bb

    const-string v11, "auto"

    .line 2473
    iget-object v12, v14, Lcom/google/android/gms/measurement/internal/zzkp;->zzb:Ljava/lang/String;

    .line 2474
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b7

    goto :goto_bb

    :cond_b7
    move-object/from16 v17, v3

    const/4 v3, 0x1

    goto :goto_10d

    .line 2475
    :cond_bb
    :goto_bb
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    if-eqz v11, :cond_f8

    .line 2476
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v18, "_npa"

    .line 2477
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_ce

    const-wide/16 v19, 0x1

    goto :goto_d0

    :cond_ce
    move-wide/from16 v19, v7

    :goto_d0
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    const-wide/16 v7, 0x1

    move-object v11, v12

    move-object v7, v12

    move-object/from16 v12, v18

    move-object/from16 v17, v3

    move-object v8, v14

    const/4 v3, 0x1

    move-wide v13, v9

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_f4

    .line 2478
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkp;->zze:Ljava/lang/Object;

    iget-object v11, v7, Lcom/google/android/gms/measurement/internal/zzkn;->zzc:Ljava/lang/Long;

    .line 2479
    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10d

    .line 2480
    :cond_f4
    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_10d

    :cond_f8
    move-object/from16 v17, v3

    move-object v8, v14

    const/4 v3, 0x1

    if-eqz v8, :cond_10d

    .line 2482
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v12, "_npa"

    const/4 v15, 0x0

    const-string v16, "auto"

    move-object v11, v7

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2483
    invoke-virtual {v1, v7, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 2485
    :cond_10d
    :goto_10d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v7

    if-eqz v7, :cond_1cb

    .line 2487
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    .line 2488
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    .line 2489
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zze()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    .line 2490
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzf()Ljava/lang/String;

    move-result-object v14

    .line 2491
    invoke-static {v11, v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1cb

    .line 2493
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v11

    .line 2494
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v11

    const-string v12, "New GMP App Id passed in. Removing cached database data. appId"

    .line 2495
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 2496
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2497
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v11

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 2498
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 2499
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 2500
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_158
    .catchall {:try_start_9e .. :try_end_158} :catchall_4c6

    .line 2501
    :try_start_158
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzab;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 2502
    new-array v13, v3, [Ljava/lang/String;
    :try_end_15e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_158 .. :try_end_15e} :catch_1b6
    .catchall {:try_start_158 .. :try_end_15e} :catchall_4c6

    const/4 v15, 0x0

    :try_start_15f
    aput-object v7, v13, v15

    const-string v14, "events"

    .line 2503
    invoke-virtual {v12, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v14, v15

    const-string v8, "user_attributes"

    .line 2504
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "conditional_properties"

    .line 2505
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "apps"

    .line 2506
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "raw_events"

    .line 2507
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "raw_events_metadata"

    .line 2508
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "event_filters"

    .line 2509
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "property_filters"

    .line 2510
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v14, v8

    const-string v8, "audience_filter_values"

    .line 2511
    invoke-virtual {v12, v8, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_1c9

    .line 2513
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v8, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v8, v7, v12}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1b3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15f .. :try_end_1b3} :catch_1b4
    .catchall {:try_start_15f .. :try_end_1b3} :catchall_4c6

    goto :goto_1c9

    :catch_1b4
    move-exception v0

    goto :goto_1b8

    :catch_1b6
    move-exception v0

    const/4 v15, 0x0

    .line 2516
    :goto_1b8
    :try_start_1b8
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    .line 2517
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    const-string v11, "Error deleting application data. appId, error"

    .line 2518
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v8, v11, v7, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c9
    :goto_1c9
    const/4 v7, 0x0

    goto :goto_1cc

    :cond_1cb
    const/4 v15, 0x0

    :goto_1cc
    if-eqz v7, :cond_22b

    .line 2522
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v11

    const-wide/32 v13, -0x80000000

    cmp-long v0, v11, v13

    if-eqz v0, :cond_1e6

    .line 2523
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v11

    move-object v8, v4

    iget-wide v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    cmp-long v0, v11, v3

    if-eqz v0, :cond_1e7

    const/4 v0, 0x1

    goto :goto_1e8

    :cond_1e6
    move-object v8, v4

    :cond_1e7
    const/4 v0, 0x0

    .line 2525
    :goto_1e8
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzm()J

    move-result-wide v3

    cmp-long v11, v3, v13

    if-nez v11, :cond_204

    .line 2526
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_204

    .line 2527
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_204

    const/4 v3, 0x1

    goto :goto_205

    :cond_204
    const/4 v3, 0x0

    :goto_205
    or-int/2addr v0, v3

    if-eqz v0, :cond_22c

    .line 2529
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_pv"

    .line 2530
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzg;->zzl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v12, "_au"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    const/4 v4, 0x0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzal;Ljava/lang/String;J)V

    .line 2532
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_22d

    :cond_22b
    move-object v8, v4

    :cond_22c
    const/4 v4, 0x0

    .line 2533
    :goto_22d
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    if-nez v6, :cond_23f

    .line 2537
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v7, "_f"

    .line 2538
    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    goto :goto_250

    :cond_23f
    const/4 v3, 0x1

    if-ne v6, v3, :cond_24f

    .line 2541
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const-string v7, "_v"

    .line 2542
    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzam;

    move-result-object v0

    goto :goto_250

    :cond_24f
    const/4 v0, 0x0

    :goto_250
    if-nez v0, :cond_49b

    const-wide/32 v11, 0x36ee80

    .line 2544
    div-long v13, v9, v11
    :try_end_257
    .catchall {:try_start_1b8 .. :try_end_257} :catchall_4c6

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    mul-long v13, v13, v11

    const-string v0, "_dac"

    const-string v3, "_r"

    const-string v7, "_c"

    const-string v15, "_et"

    if-nez v6, :cond_3fb

    .line 2546
    :try_start_266
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v12, "_fot"

    .line 2547
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v20, "auto"

    move-object v11, v6

    move-wide v13, v9

    move-object v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2548
    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 2550
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v6

    .line 2551
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzar:Lcom/google/android/gms/measurement/internal/zzem;

    .line 2552
    invoke-virtual {v6, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v6

    if-eqz v6, :cond_29b

    .line 2554
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2555
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    .line 2556
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzf()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v6

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 2557
    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzfo;->zza(Ljava/lang/String;)V

    .line 2559
    :cond_29b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2560
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 2561
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v11, 0x1

    .line 2562
    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2563
    invoke-virtual {v6, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v11, 0x0

    .line 2564
    invoke-virtual {v6, v5, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2565
    invoke-virtual {v6, v8, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v3, v17

    .line 2566
    invoke-virtual {v6, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "_sysu"

    .line 2567
    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2569
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v7

    .line 2570
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzas;->zzat:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v7

    if-eqz v7, :cond_2d6

    const-wide/16 v11, 0x1

    .line 2571
    invoke-virtual {v6, v4, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2d8

    :cond_2d6
    const-wide/16 v11, 0x1

    .line 2572
    :goto_2d8
    iget-boolean v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzq:Z

    if-eqz v7, :cond_2df

    .line 2573
    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2574
    :cond_2df
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 2575
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2576
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 2577
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    const-string v11, "first_open_count"

    .line 2578
    invoke-virtual {v0, v7, v11}, Lcom/google/android/gms/measurement/internal/zzab;->zzh(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    .line 2581
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzn()Landroid/content/Context;

    move-result-object v0

    .line 2582
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_31c

    .line 2585
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 2586
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v3, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 2587
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2588
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_315
    .catchall {:try_start_266 .. :try_end_315} :catchall_4c6

    move-object/from16 v17, v8

    move-wide v7, v13

    :cond_318
    :goto_318
    const-wide/16 v11, 0x0

    goto/16 :goto_3de

    .line 2591
    :cond_31c
    :try_start_31c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzn()Landroid/content/Context;

    move-result-object v0

    .line 2592
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_32d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31c .. :try_end_32d} :catch_32e
    .catchall {:try_start_31c .. :try_end_32d} :catchall_4c6

    goto :goto_345

    :catch_32e
    move-exception v0

    .line 2596
    :try_start_32f
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v7

    .line 2597
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v7

    const-string v11, "Package info is null, first open report might be inaccurate. appId"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 2598
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 2599
    invoke-virtual {v7, v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_345
    if-eqz v0, :cond_396

    .line 2601
    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v15, 0x0

    cmp-long v7, v11, v15

    if-eqz v7, :cond_396

    .line 2603
    iget-wide v11, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-object/from16 v17, v8

    iget-wide v7, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v11, v7

    if-eqz v0, :cond_37a

    .line 2605
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    .line 2606
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzbt:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-eqz v0, :cond_373

    const-wide/16 v7, 0x0

    cmp-long v0, v13, v7

    if-nez v0, :cond_378

    const-wide/16 v7, 0x1

    .line 2608
    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_378

    :cond_373
    const-wide/16 v7, 0x1

    .line 2609
    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_378
    :goto_378
    const/4 v0, 0x0

    goto :goto_37b

    :cond_37a
    const/4 v0, 0x1

    .line 2611
    :goto_37b
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v12, "_fi"

    if-eqz v0, :cond_384

    const-wide/16 v7, 0x1

    goto :goto_386

    :cond_384
    const-wide/16 v7, 0x0

    .line 2612
    :goto_386
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, "auto"

    move-object v11, v5

    move-wide v7, v13

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2613
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzm;)V
    :try_end_395
    .catchall {:try_start_32f .. :try_end_395} :catchall_4c6

    goto :goto_399

    :cond_396
    move-object/from16 v17, v8

    move-wide v7, v13

    .line 2616
    :goto_399
    :try_start_399
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzn()Landroid/content/Context;

    move-result-object v0

    .line 2617
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v11}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_3aa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_399 .. :try_end_3aa} :catch_3ab
    .catchall {:try_start_399 .. :try_end_3aa} :catchall_4c6

    goto :goto_3c2

    :catch_3ab
    move-exception v0

    .line 2621
    :try_start_3ac
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 2622
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v11, "Application info is null, first open report might be inaccurate. appId"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 2623
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 2624
    invoke-virtual {v5, v11, v12, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_3c2
    if-eqz v0, :cond_318

    .line 2626
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v11, 0x1

    and-int/2addr v5, v11

    if-eqz v5, :cond_3cf

    const-wide/16 v11, 0x1

    .line 2627
    invoke-virtual {v6, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2628
    :cond_3cf
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_318

    const-string v0, "_sysu"

    const-wide/16 v11, 0x1

    .line 2629
    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_318

    :goto_3de
    cmp-long v0, v7, v11

    if-ltz v0, :cond_3e7

    move-object/from16 v3, v17

    .line 2631
    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2632
    :cond_3e7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v12, "_f"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {v13, v6}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzal;Ljava/lang/String;J)V

    .line 2633
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_456

    :cond_3fb
    move-object v4, v15

    const/4 v5, 0x1

    if-ne v6, v5, :cond_456

    .line 2635
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzkn;

    const-string v12, "_fvt"

    .line 2636
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v16, "auto"

    move-object v11, v5

    move-wide v13, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzkn;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 2637
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzkn;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 2639
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2640
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 2641
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v11, 0x1

    .line 2642
    invoke-virtual {v5, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2643
    invoke-virtual {v5, v3, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2645
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v3

    .line 2646
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzat:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v3

    if-eqz v3, :cond_43a

    const-wide/16 v6, 0x1

    .line 2647
    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_43c

    :cond_43a
    const-wide/16 v6, 0x1

    .line 2648
    :goto_43c
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzq:Z

    if-eqz v3, :cond_443

    .line 2649
    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2650
    :cond_443
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v12, "_v"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {v13, v5}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v0

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzal;Ljava/lang/String;J)V

    .line 2651
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 2653
    :cond_456
    :goto_456
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    .line 2654
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzau:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v0

    if-nez v0, :cond_4b7

    .line 2656
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v5, 0x1

    .line 2657
    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2659
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v3

    .line 2660
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzas;->zzat:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v3

    if-eqz v3, :cond_487

    const-string v3, "_fr"

    const-wide/16 v4, 0x1

    .line 2661
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2662
    :cond_487
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v12, "_e"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzal;Ljava/lang/String;J)V

    .line 2663
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_4b7

    .line 2664
    :cond_49b
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzm;->zzi:Z

    if-eqz v0, :cond_4b7

    .line 2666
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2667
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaq;

    const-string v12, "_cd"

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {v13, v0}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Landroid/os/Bundle;)V

    const-string v14, "auto"

    move-object v11, v3

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzal;Ljava/lang/String;J)V

    .line 2668
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 2669
    :cond_4b7
    :goto_4b7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_4be
    .catchall {:try_start_3ac .. :try_end_4be} :catchall_4c6

    .line 2670
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    return-void

    :catchall_4c6
    move-exception v0

    .line 2672
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 2673
    throw v0

    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzy;)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2796
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2798
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzy;Lcom/google/android/gms/measurement/internal/zzm;)V

    :cond_b
    return-void
.end method

.method final zzb(Lcom/google/android/gms/measurement/internal/zzy;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2800
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2801
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2802
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2803
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2804
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2805
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 2806
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zze(Lcom/google/android/gms/measurement/internal/zzm;)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    .line 2808
    :cond_21
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    if-nez v0, :cond_29

    .line 2809
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    return-void

    .line 2811
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzf()V

    .line 2812
    :try_start_30
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;

    .line 2814
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzab;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzy;

    move-result-object v0

    if-eqz v0, :cond_b6

    .line 2817
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2818
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 2819
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v4

    .line 2820
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2821
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2822
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zze(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzy;->zze:Z

    if-eqz v1, :cond_80

    .line 2824
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    :cond_80
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    if-eqz v1, :cond_d9

    const/4 v1, 0x0

    .line 2827
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    if-eqz v2, :cond_93

    .line 2828
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzaq;->zzb:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzal;->zzb()Landroid/os/Bundle;

    move-result-object v1

    :cond_93
    move-object v3, v1

    .line 2830
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v1

    .line 2831
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzaq;->zza:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzy;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzk:Lcom/google/android/gms/measurement/internal/zzaq;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzaq;->zzd:J

    const/4 p1, 0x1

    const/4 v8, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-wide v5, v6

    move v7, p1

    .line 2832
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object p1

    .line 2833
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzaq;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_d9

    .line 2836
    :cond_b6
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p2

    .line 2837
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zza:Ljava/lang/String;

    .line 2838
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2839
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v2

    .line 2840
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzy;->zzc:Lcom/google/android/gms/measurement/internal/zzkn;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkn;->zza:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzer;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2841
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2842
    :cond_d9
    :goto_d9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->b_()V
    :try_end_e0
    .catchall {:try_start_30 .. :try_end_e0} :catchall_e8

    .line 2843
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    return-void

    :catchall_e8
    move-exception p1

    .line 2845
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzab;->zzh()V

    .line 2846
    throw p1
.end method

.method public final zzc()Lcom/google/android/gms/measurement/internal/zzfr;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzkd;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzb:Lcom/google/android/gms/measurement/internal/zzfr;

    return-object v0
.end method

.method final zzc(Lcom/google/android/gms/measurement/internal/zzm;)Lcom/google/android/gms/measurement/internal/zzg;
    .registers 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 2922
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2923
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 2924
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2925
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2926
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    .line 2928
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v1

    .line 2929
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzff;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2930
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkr;->zzb()Z

    move-result v2

    if-eqz v2, :cond_116

    .line 2931
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v2

    .line 2932
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzbu:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v2

    if-eqz v2, :cond_116

    if-nez v0, :cond_54

    .line 2934
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzg;-><init>(Lcom/google/android/gms/measurement/internal/zzfx;Ljava/lang/String;)V

    .line 2936
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v2

    .line 2937
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzko;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    .line 2938
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    goto :goto_6e

    .line 2939
    :cond_54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzh()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 2940
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zze(Ljava/lang/String;)V

    .line 2942
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v1

    .line 2943
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzko;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/String;)V

    .line 2944
    :cond_6e
    :goto_6e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Ljava/lang/String;)V

    .line 2945
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Ljava/lang/String;)V

    .line 2946
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzle;->zzb()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 2947
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    .line 2948
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzc()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzas;->zzbo:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 2949
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(Ljava/lang/String;)V

    .line 2950
    :cond_95
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 2951
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(Ljava/lang/String;)V

    .line 2952
    :cond_a2
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_af

    .line 2953
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zze:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzd(J)V

    .line 2954
    :cond_af
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_bc

    .line 2955
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzg(Ljava/lang/String;)V

    .line 2956
    :cond_bc
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(J)V

    .line 2957
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_ca

    .line 2958
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzh(Ljava/lang/String;)V

    .line 2959
    :cond_ca
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zze(J)V

    .line 2960
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzh:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Z)V

    .line 2961
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e1

    .line 2962
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzi(Ljava/lang/String;)V

    .line 2964
    :cond_e1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v1

    .line 2965
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzas;->zzcm:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaa;->zza(Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v1

    if-nez v1, :cond_f4

    .line 2966
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzl:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzp(J)V

    .line 2967
    :cond_f4
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzo:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzb(Z)V

    .line 2968
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzp:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzc(Z)V

    .line 2969
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzs:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzg;->zza(Ljava/lang/Boolean;)V

    .line 2970
    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zzt:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzg;->zzf(J)V

    .line 2971
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zza()Z

    move-result p1

    if-eqz p1, :cond_115

    .line 2972
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V

    :cond_115
    return-object v0

    .line 2974
    :cond_116
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzg;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object p1

    return-object p1
.end method

.method public final zzd()Lcom/google/android/gms/measurement/internal/zzfa;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzc:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzkd;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzc:Lcom/google/android/gms/measurement/internal/zzfa;

    return-object v0
.end method

.method final zzd(Lcom/google/android/gms/measurement/internal/zzm;)Ljava/lang/String;
    .registers 6

    .line 2976
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    .line 2977
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzkj;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;Lcom/google/android/gms/measurement/internal/zzm;)V

    .line 2978
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfu;->zza(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    .line 2979
    :try_start_11
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_19} :catch_1e
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_19} :catch_1c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    goto :goto_1f

    :catch_1c
    move-exception v0

    goto :goto_1f

    :catch_1e
    move-exception v0

    .line 2982
    :goto_1f
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 2983
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzm;->zza:Ljava/lang/String;

    .line 2984
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 2985
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zze()Lcom/google/android/gms/measurement/internal/zzab;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzd:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzkd;)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzd:Lcom/google/android/gms/measurement/internal/zzab;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/measurement/internal/zzq;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzg:Lcom/google/android/gms/measurement/internal/zzq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzkd;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzg:Lcom/google/android/gms/measurement/internal/zzq;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/measurement/internal/zzig;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzi:Lcom/google/android/gms/measurement/internal/zzig;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzkd;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzi:Lcom/google/android/gms/measurement/internal/zzig;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/measurement/internal/zzkk;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzh:Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzb(Lcom/google/android/gms/measurement/internal/zzkd;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzh:Lcom/google/android/gms/measurement/internal/zzkk;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/measurement/internal/zzer;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzj()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/measurement/internal/zzko;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzi()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    return-object v0
.end method

.method final zzk()V
    .registers 3

    .line 124
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzk:Z

    if-eqz v0, :cond_5

    return-void

    .line 125
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final zzl()V
    .registers 18
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    .line 782
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 783
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    const/4 v0, 0x1

    .line 784
    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzs:Z

    const/4 v2, 0x0

    .line 786
    :try_start_c
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzu()Lcom/google/android/gms/measurement/internal/zzv;

    .line 788
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzw()Lcom/google/android/gms/measurement/internal/zzin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzin;->zzag()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_32

    .line 791
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v3, "Upload data called on the client side before use of service was decided"

    .line 793
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_30c

    .line 794
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzs:Z

    .line 795
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    return-void

    .line 797
    :cond_32
    :try_start_32
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 799
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v3, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_30c

    .line 801
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzs:Z

    .line 802
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    return-void

    .line 804
    :cond_4d
    :try_start_4d
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzm:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_5e

    .line 805
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzz()V
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_30c

    .line 806
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzs:Z

    .line 807
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    return-void

    .line 810
    :cond_5e
    :try_start_5e
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 811
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzv:Ljava/util/List;

    if-eqz v3, :cond_67

    const/4 v3, 0x1

    goto :goto_68

    :cond_67
    const/4 v3, 0x0

    :goto_68
    if-eqz v3, :cond_7f

    .line 814
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v3, "Uploading requested multiple times"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_5e .. :try_end_79} :catchall_30c

    .line 816
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzs:Z

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    return-void

    .line 819
    :cond_7f
    :try_start_7f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfa;->zzf()Z

    move-result v3

    if-nez v3, :cond_a1

    .line 821
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 822
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v3, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 823
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzz()V
    :try_end_9b
    .catchall {:try_start_7f .. :try_end_9b} :catchall_30c

    .line 824
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzs:Z

    .line 825
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    return-void

    .line 828
    :cond_a1
    :try_start_a1
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    .line 829
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 831
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v7

    .line 832
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzap:Lcom/google/android/gms/measurement/internal/zzem;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/zzaa;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v7

    .line 833
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->zzv()J

    move-result-wide v10

    sub-long v10, v3, v10

    const/4 v8, 0x0

    :goto_bf
    if-ge v8, v7, :cond_ca

    .line 835
    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Ljava/lang/String;J)Z

    move-result v12

    if-eqz v12, :cond_ca

    add-int/lit8 v8, v8, 0x1

    goto :goto_bf

    .line 838
    :cond_ca
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v7

    .line 839
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzff;->zzc:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfj;->zza()J

    move-result-wide v7

    cmp-long v10, v7, v5

    if-eqz v10, :cond_f3

    .line 842
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 843
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zzw()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v5

    const-string v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v7, v3, v7

    .line 844
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 845
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 846
    :cond_f3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzab;->d_()Ljava/lang/String;

    move-result-object v5

    .line 847
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-nez v6, :cond_2e4

    .line 848
    iget-wide v10, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzx:J

    cmp-long v6, v10, v7

    if-nez v6, :cond_113

    .line 849
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzab;->zzaa()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzx:J

    .line 851
    :cond_113
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v6

    .line 853
    sget-object v7, Lcom/google/android/gms/measurement/internal/zzas;->zzf:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/zzaa;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v6

    .line 856
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v7

    .line 858
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzas;->zzg:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/zzaa;->zzb(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzab;->zza(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    .line 862
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_306

    .line 864
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_141
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_160

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 865
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 866
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzad()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_141

    .line 867
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzad()Ljava/lang/String;

    move-result-object v7

    goto :goto_161

    :cond_160
    move-object v7, v9

    :goto_161
    if-eqz v7, :cond_190

    const/4 v8, 0x0

    .line 871
    :goto_164
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_190

    .line 872
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 873
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzad()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_18d

    .line 874
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzad()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18d

    .line 875
    invoke-interface {v6, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_190

    :cond_18d
    add-int/lit8 v8, v8, 0x1

    goto :goto_164

    .line 878
    :cond_190
    :goto_190
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbw$zzf;->zzb()Lcom/google/android/gms/internal/measurement/zzbw$zzf$zza;

    move-result-object v7

    .line 879
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 880
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 882
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v11

    .line 883
    invoke-virtual {v11, v5}, Lcom/google/android/gms/measurement/internal/zzaa;->zzf(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x0

    :goto_1ac
    if-ge v12, v8, :cond_217

    .line 885
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    .line 886
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi;->zzbm()Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    move-result-object v13

    .line 887
    check-cast v13, Lcom/google/android/gms/internal/measurement/zzfi$zzb;

    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 888
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 890
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v14

    .line 891
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzaa;->zzf()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzg(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v14

    .line 892
    invoke-virtual {v14, v3, v4}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    move-result-object v14

    .line 893
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzfx;->zzu()Lcom/google/android/gms/measurement/internal/zzv;

    .line 896
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzb(Z)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    if-nez v11, :cond_1ec

    .line 898
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzn()Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 900
    :cond_1ec
    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzfx;->zzb()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v14

    .line 901
    sget-object v15, Lcom/google/android/gms/measurement/internal/zzas;->zzay:Lcom/google/android/gms/measurement/internal/zzem;

    invoke-virtual {v14, v5, v15}, Lcom/google/android/gms/measurement/internal/zzaa;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzem;)Z

    move-result v14

    if-eqz v14, :cond_211

    .line 902
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v14, Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbi()[B

    move-result-object v14

    .line 903
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/measurement/internal/zzkk;->zza([B)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;->zzl(J)Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;

    .line 904
    :cond_211
    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/measurement/zzbw$zzf$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzg$zza;)Lcom/google/android/gms/internal/measurement/zzbw$zzf$zza;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1ac

    .line 908
    :cond_217
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    const/4 v11, 0x2

    .line 909
    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzet;->zza(I)Z

    move-result v6

    if-eqz v6, :cond_235

    .line 910
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    move-result-object v6

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    invoke-virtual {v6, v11}, Lcom/google/android/gms/measurement/internal/zzkk;->zza(Lcom/google/android/gms/internal/measurement/zzbw$zzf;)Ljava/lang/String;

    move-result-object v6

    goto :goto_236

    :cond_235
    move-object v6, v9

    .line 911
    :goto_236
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzh()Lcom/google/android/gms/measurement/internal/zzkk;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfi$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgt;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfi;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzbw$zzf;

    .line 912
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzdq;->zzbi()[B

    move-result-object v14

    .line 914
    sget-object v11, Lcom/google/android/gms/measurement/internal/zzas;->zzp:Lcom/google/android/gms/measurement/internal/zzem;

    .line 915
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/zzem;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 916
    check-cast v9, Ljava/lang/String;
    :try_end_24d
    .catchall {:try_start_a1 .. :try_end_24d} :catchall_30c

    .line 918
    :try_start_24d
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 920
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_25a

    const/4 v11, 0x1

    goto :goto_25b

    :cond_25a
    const/4 v11, 0x0

    :goto_25b
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 921
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzv:Ljava/util/List;

    if-eqz v11, :cond_272

    .line 923
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v10

    .line 924
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v10

    const-string v11, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    goto :goto_279

    .line 925
    :cond_272
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzv:Ljava/util/List;

    .line 927
    :goto_279
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzfx;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v10

    .line 928
    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzff;->zzd:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v10, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfj;->zza(J)V

    const-string v3, "?"

    if-lez v8, :cond_290

    .line 931
    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/measurement/zzbw$zzf$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbw$zzg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbw$zzg;->zzx()Ljava/lang/String;

    move-result-object v3

    .line 933
    :cond_290
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 934
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v7, "Uploading data. app, uncompressed size, data"

    array-length v8, v14

    .line 935
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v3, v8, v6}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 936
    iput-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzr:Z

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzd()Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v11

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzki;

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/zzki;-><init>(Lcom/google/android/gms/measurement/internal/zzkg;Ljava/lang/String;)V

    .line 939
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 940
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzkd;->zzak()V

    .line 941
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-static {v14}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgs;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzfe;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v12, v5

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzfc;)V

    .line 945
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb(Ljava/lang/Runnable;)V
    :try_end_2cf
    .catch Ljava/net/MalformedURLException; {:try_start_24d .. :try_end_2cf} :catch_2d0
    .catchall {:try_start_24d .. :try_end_2cf} :catchall_30c

    goto :goto_306

    .line 949
    :catch_2d0
    :try_start_2d0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 950
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    .line 951
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzet;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 952
    invoke-virtual {v0, v3, v4, v9}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_306

    .line 954
    :cond_2e4
    iput-wide v7, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzx:J

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    .line 957
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaa;->zzv()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzab;->zza(J)Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_306

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zze()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzab;->zzb(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    if-eqz v0, :cond_306

    .line 961
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Lcom/google/android/gms/measurement/internal/zzg;)V
    :try_end_306
    .catchall {:try_start_2d0 .. :try_end_306} :catchall_30c

    .line 962
    :cond_306
    :goto_306
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzs:Z

    .line 963
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    return-void

    :catchall_30c
    move-exception v0

    .line 965
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzkg;->zzs:Z

    .line 966
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzaa()V

    .line 967
    throw v0

    return-void
.end method

.method public final zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final zzn()Landroid/content/Context;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final zzo()V
    .registers 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 2138
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    .line 2139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzk()V

    .line 2140
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzl:Z

    if-nez v0, :cond_79

    const/4 v0, 0x1

    .line 2141
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzl:Z

    .line 2142
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzab()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 2144
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzu:Ljava/nio/channels/FileChannel;

    .line 2145
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    .line 2146
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfx;->zzy()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->zzaf()I

    move-result v1

    .line 2148
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzkg;->zzw()V

    if-le v0, v1, :cond_40

    .line 2151
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 2152
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 2153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 2155
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_79

    :cond_40
    if-ge v0, v1, :cond_79

    .line 2159
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzu:Ljava/nio/channels/FileChannel;

    .line 2160
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkg;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2162
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 2163
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 2164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_79

    .line 2166
    :cond_62
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    .line 2167
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    .line 2168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 2170
    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    :goto_79
    return-void
.end method

.method final zzp()V
    .registers 2

    .line 2433
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzp:I

    return-void
.end method

.method public final zzq()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/measurement/internal/zzet;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    return-object v0
.end method

.method final zzs()Lcom/google/android/gms/measurement/internal/zzfx;
    .registers 2

    .line 2435
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    return-object v0
.end method

.method public final zzu()Lcom/google/android/gms/measurement/internal/zzv;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzkg;->zzj:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfx;->zzu()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    return-object v0
.end method
