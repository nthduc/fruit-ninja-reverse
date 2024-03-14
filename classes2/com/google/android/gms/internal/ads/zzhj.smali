.class final Lcom/google/android/gms/internal/ads/zzhj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhc;


# instance fields
.field private repeatMode:I

.field private final zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

.field private final zzaeq:Lcom/google/android/gms/internal/ads/zzog;

.field private final zzaer:Lcom/google/android/gms/internal/ads/zzod;

.field private final zzaes:Landroid/os/Handler;

.field private final zzaet:Lcom/google/android/gms/internal/ads/zzhl;

.field private final zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/gms/internal/ads/zzhf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaev:Lcom/google/android/gms/internal/ads/zzid;

.field private final zzaew:Lcom/google/android/gms/internal/ads/zzia;

.field private zzaex:Z

.field private zzaey:Z

.field private zzaez:I

.field private zzafa:I

.field private zzafb:I

.field private zzafc:Z

.field private zzafd:Lcom/google/android/gms/internal/ads/zzhy;

.field private zzafe:Ljava/lang/Object;

.field private zzaff:Lcom/google/android/gms/internal/ads/zznp;

.field private zzafg:Lcom/google/android/gms/internal/ads/zzod;

.field private zzafh:Lcom/google/android/gms/internal/ads/zzhu;

.field private zzafi:Lcom/google/android/gms/internal/ads/zzhn;

.field private zzafj:I

.field private zzafk:I

.field private zzafl:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zzog;Lcom/google/android/gms/internal/ads/zzhs;)V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzpq;->zzbkm:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    array-length v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzhx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzoz;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzog;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeq:Lcom/google/android/gms/internal/ads/zzog;

    .line 6
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaey:Z

    .line 7
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzhj;->repeatMode:I

    .line 8
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaez:I

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzod;

    array-length v2, p1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzob;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzod;-><init>([Lcom/google/android/gms/internal/ads/zzob;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaer:Lcom/google/android/gms/internal/ads/zzod;

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhy;->zzaid:Lcom/google/android/gms/internal/ads/zzhy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzid;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzid;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzia;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzia;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zznp;->zzbgu:Lcom/google/android/gms/internal/ads/zznp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaff:Lcom/google/android/gms/internal/ads/zznp;

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaer:Lcom/google/android/gms/internal/ads/zzod;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafg:Lcom/google/android/gms/internal/ads/zzod;

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhu;->zzahz:Lcom/google/android/gms/internal/ads/zzhu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 17
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_89

    :cond_85
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 18
    :goto_89
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Lcom/google/android/gms/internal/ads/zzhj;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaes:Landroid/os/Handler;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhn;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 20
    new-instance v9, Lcom/google/android/gms/internal/ads/zzhl;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaey:Z

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaes:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzhl;-><init>([Lcom/google/android/gms/internal/ads/zzhx;Lcom/google/android/gms/internal/ads/zzog;Lcom/google/android/gms/internal/ads/zzhs;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzhn;Lcom/google/android/gms/internal/ads/zzhc;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaet:Lcom/google/android/gms/internal/ads/zzhl;

    return-void
.end method

.method private final zzeo()I
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafa:I

    if-lez v0, :cond_d

    goto :goto_1a

    .line 93
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzhn;->zzafr:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    const/4 v3, 0x0

    .line 94
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    return v3

    .line 92
    :cond_1a
    :goto_1a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafj:I

    return v0
.end method


# virtual methods
.method public final getBufferedPosition()J
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafa:I

    if-lez v0, :cond_d

    goto :goto_29

    .line 109
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzhn;->zzafr:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    const/4 v3, 0x0

    .line 110
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzia;->zzfh()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzhn;->zzagw:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzha;->zzdm(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 108
    :cond_29
    :goto_29
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafl:J

    return-wide v0
.end method

.method public final getDuration()J
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 98
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhj;->zzeo()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    const/4 v3, 0x0

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzid;Z)Lcom/google/android/gms/internal/ads/zzid;

    move-result-object v0

    .line 100
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzid;->zzaih:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzha;->zzdm(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPlaybackState()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaez:I

    return v0
.end method

.method public final release()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaet:Lcom/google/android/gms/internal/ads/zzhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhl;->release()V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaes:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final seekTo(J)V
    .registers 12

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhj;->zzeo()I

    move-result v0

    if-ltz v0, :cond_8b

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhy;->zzff()I

    move-result v1

    if-ge v0, v1, :cond_8b

    .line 56
    :cond_16
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafa:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafa:I

    .line 57
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafj:I

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhy;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    if-nez v1, :cond_55

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    .line 60
    invoke-virtual {v1, v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzid;Z)Lcom/google/android/gms/internal/ads/zzid;

    cmp-long v1, p1, v2

    if-nez v1, :cond_3c

    .line 61
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    .line 62
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzid;->zzaiw:J

    goto :goto_40

    .line 63
    :cond_3c
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzha;->zzdn(J)J

    move-result-wide v5

    .line 64
    :goto_40
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaev:Lcom/google/android/gms/internal/ads/zzid;

    .line 65
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzid;->zzaix:J

    add-long/2addr v7, v5

    .line 67
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    .line 68
    invoke-virtual {v1, v4, v5, v4}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    move-result-object v1

    .line 69
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzia;->zzaih:J

    cmp-long v1, v5, v2

    if-eqz v1, :cond_55

    cmp-long v1, v7, v5

    .line 72
    :cond_55
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafk:I

    cmp-long v1, p1, v2

    if-nez v1, :cond_67

    const-wide/16 p1, 0x0

    .line 74
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafl:J

    .line 75
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaet:Lcom/google/android/gms/internal/ads/zzhl;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhy;IJ)V

    return-void

    .line 76
    :cond_67
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafl:J

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaet:Lcom/google/android/gms/internal/ads/zzhl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzha;->zzdn(J)J

    move-result-wide p1

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzhy;IJ)V

    .line 78
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhf;

    .line 79
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhf;->zzen()V

    goto :goto_7a

    :cond_8a
    return-void

    .line 55
    :cond_8b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzht;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzht;-><init>(Lcom/google/android/gms/internal/ads/zzhy;IJ)V

    throw v1

    return-void
.end method

.method public final stop()V
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaet:Lcom/google/android/gms/internal/ads/zzhl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhl;->stop()V

    return-void
.end method

.method final zza(Landroid/os/Message;)V
    .registers 5

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_146

    .line 167
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 162
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhd;

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhf;

    .line 164
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzhf;->zza(Lcom/google/android/gms/internal/ads/zzhd;)V

    goto :goto_16

    :cond_26
    return-void

    .line 156
    :pswitch_27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhu;

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fe

    .line 158
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhf;

    .line 160
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzhf;->zza(Lcom/google/android/gms/internal/ads/zzhu;)V

    goto :goto_3b

    :cond_4b
    return-void

    .line 147
    :pswitch_4c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhp;

    .line 148
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafa:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzahw:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafa:I

    .line 149
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafb:I

    if-nez v0, :cond_fe

    .line 150
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    .line 151
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzafe:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafe:Ljava/lang/Object;

    .line 152
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhp;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 153
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhf;

    .line 154
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafe:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhf;->zza(Lcom/google/android/gms/internal/ads/zzhy;Ljava/lang/Object;)V

    goto :goto_6d

    :cond_81
    return-void

    .line 142
    :pswitch_82
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafa:I

    if-nez v0, :cond_fe

    .line 143
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 144
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_92
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhf;

    .line 145
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhf;->zzen()V

    goto :goto_92

    :cond_a2
    return-void

    .line 136
    :pswitch_a3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafa:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafa:I

    if-nez v0, :cond_fe

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    .line 138
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_fe

    .line 139
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ba
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhf;

    .line 140
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhf;->zzen()V

    goto :goto_ba

    :cond_ca
    return-void

    .line 126
    :pswitch_cb
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafb:I

    if-nez v0, :cond_fe

    .line 127
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzoi;

    .line 128
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaex:Z

    .line 129
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzoi;->zzbhw:Lcom/google/android/gms/internal/ads/zznp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaff:Lcom/google/android/gms/internal/ads/zznp;

    .line 130
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzoi;->zzbhx:Lcom/google/android/gms/internal/ads/zzod;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafg:Lcom/google/android/gms/internal/ads/zzod;

    .line 131
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeq:Lcom/google/android/gms/internal/ads/zzog;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzoi;->zzbhy:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzog;->zzd(Ljava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ea
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhf;

    .line 133
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaff:Lcom/google/android/gms/internal/ads/zznp;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafg:Lcom/google/android/gms/internal/ads/zzod;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhf;->zza(Lcom/google/android/gms/internal/ads/zznp;Lcom/google/android/gms/internal/ads/zzod;)V

    goto :goto_ea

    :cond_fe
    return-void

    .line 121
    :pswitch_ff
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_104

    goto :goto_105

    :cond_104
    const/4 v1, 0x0

    :goto_105
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafc:Z

    .line 122
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhf;

    .line 123
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafc:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhf;->zzg(Z)V

    goto :goto_10d

    :cond_11f
    return-void

    .line 116
    :pswitch_120
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaez:I

    .line 117
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhf;

    .line 118
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaey:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaez:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhf;->zza(ZI)V

    goto :goto_12a

    :cond_13e
    return-void

    .line 114
    :pswitch_13f
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafb:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafb:I

    return-void

    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_13f
        :pswitch_120
        :pswitch_ff
        :pswitch_cb
        :pswitch_a3
        :pswitch_82
        :pswitch_4c
        :pswitch_27
        :pswitch_c
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhf;)V
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzmz;)V
    .registers 7

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhy;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafe:Ljava/lang/Object;

    if-eqz v0, :cond_2d

    .line 29
    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhy;->zzaid:Lcom/google/android/gms/internal/ads/zzhy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    .line 30
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafe:Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhf;

    .line 32
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafe:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhf;->zza(Lcom/google/android/gms/internal/ads/zzhy;Ljava/lang/Object;)V

    goto :goto_19

    .line 34
    :cond_2d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaex:Z

    if-eqz v0, :cond_5b

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaex:Z

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/ads/zznp;->zzbgu:Lcom/google/android/gms/internal/ads/zznp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaff:Lcom/google/android/gms/internal/ads/zznp;

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaer:Lcom/google/android/gms/internal/ads/zzod;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafg:Lcom/google/android/gms/internal/ads/zzod;

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeq:Lcom/google/android/gms/internal/ads/zzog;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzog;->zzd(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhf;

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaff:Lcom/google/android/gms/internal/ads/zznp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafg:Lcom/google/android/gms/internal/ads/zzod;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhf;->zza(Lcom/google/android/gms/internal/ads/zznp;Lcom/google/android/gms/internal/ads/zzod;)V

    goto :goto_47

    .line 42
    :cond_5b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafb:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafb:I

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaet:Lcom/google/android/gms/internal/ads/zzhl;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhl;->zza(Lcom/google/android/gms/internal/ads/zzmz;Z)V

    return-void
.end method

.method public final varargs zza([Lcom/google/android/gms/internal/ads/zzhh;)V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaet:Lcom/google/android/gms/internal/ads/zzhl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhl;->zza([Lcom/google/android/gms/internal/ads/zzhh;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhf;)V
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs zzb([Lcom/google/android/gms/internal/ads/zzhh;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaet:Lcom/google/android/gms/internal/ads/zzhl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhl;->zzb([Lcom/google/android/gms/internal/ads/zzhh;)V

    return-void
.end method

.method public final zzek()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaey:Z

    return v0
.end method

.method public final zzel()I
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaep:[Lcom/google/android/gms/internal/ads/zzhx;

    array-length v0, v0

    return v0
.end method

.method public final zzem()J
    .registers 5

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafa:I

    if-lez v0, :cond_d

    goto :goto_29

    .line 104
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafd:Lcom/google/android/gms/internal/ads/zzhy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzhn;->zzafr:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    const/4 v3, 0x0

    .line 105
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhy;->zza(ILcom/google/android/gms/internal/ads/zzia;Z)Lcom/google/android/gms/internal/ads/zzia;

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaew:Lcom/google/android/gms/internal/ads/zzia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzia;->zzfh()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafi:Lcom/google/android/gms/internal/ads/zzhn;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzhn;->zzagv:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzha;->zzdm(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 103
    :cond_29
    :goto_29
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzafl:J

    return-wide v0
.end method

.method public final zzf(Z)V
    .registers 5

    .line 45
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaey:Z

    if-eq v0, p1, :cond_23

    .line 46
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaey:Z

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaet:Lcom/google/android/gms/internal/ads/zzhl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhl;->zzf(Z)V

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaeu:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhf;

    .line 49
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzaez:I

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzhf;->zza(ZI)V

    goto :goto_11

    :cond_23
    return-void
.end method
