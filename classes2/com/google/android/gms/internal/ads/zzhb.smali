.class public abstract Lcom/google/android/gms/internal/ads/zzhb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhw;
.implements Lcom/google/android/gms/internal/ads/zzhx;


# instance fields
.field private index:I

.field private state:I

.field private final zzaee:I

.field private zzaef:Lcom/google/android/gms/internal/ads/zzhz;

.field private zzaeg:Lcom/google/android/gms/internal/ads/zznm;

.field private zzaeh:J

.field private zzaei:Z

.field private zzaej:Z


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaee:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaei:Z

    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 4

    .line 43
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 44
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhb;->state:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaeg:Lcom/google/android/gms/internal/ads/zznm;

    .line 46
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaej:Z

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhb;->zzeh()V

    return-void
.end method

.method protected final getIndex()I
    .registers 2

    .line 58
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->index:I

    return v0
.end method

.method public final getState()I
    .registers 2

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->state:I

    return v0
.end method

.method public final getTrackType()I
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaee:I

    return v0
.end method

.method protected onStarted()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    return-void
.end method

.method protected onStopped()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    return-void
.end method

.method public final setIndex(I)V
    .registers 2

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhb;->index:I

    return-void
.end method

.method public final start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->state:I

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhb;->onStarted()V

    return-void
.end method

.method public final stop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 40
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhb;->state:I

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhb;->onStopped()V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/ads/zzhq;Lcom/google/android/gms/internal/ads/zzjk;Z)I
    .registers 9

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaeg:Lcom/google/android/gms/internal/ads/zznm;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zznm;->zzb(Lcom/google/android/gms/internal/ads/zzhq;Lcom/google/android/gms/internal/ads/zzjk;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_21

    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzjh;->zzgl()Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaei:Z

    .line 63
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaej:Z

    if-eqz p1, :cond_17

    return v0

    :cond_17
    const/4 p1, -0x3

    return p1

    .line 64
    :cond_19
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzjk;->zzaob:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaeh:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzjk;->zzaob:J

    goto :goto_3c

    :cond_21
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3c

    .line 66
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzhq;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    .line 67
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzho;->zzahr:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3c

    .line 68
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzho;->zzahr:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaeh:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzho;->zzds(J)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object p2

    .line 69
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzhq;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    :cond_3c
    :goto_3c
    return p3
.end method

.method public zza(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    return-void
.end method

.method protected zza(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhz;[Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zznm;JZJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaef:Lcom/google/android/gms/internal/ads/zzhz;

    .line 13
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhb;->state:I

    .line 14
    invoke-virtual {p0, p6}, Lcom/google/android/gms/internal/ads/zzhb;->zze(Z)V

    .line 15
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/android/gms/internal/ads/zzhb;->zza([Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zznm;J)V

    .line 16
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/gms/internal/ads/zzhb;->zza(JZ)V

    return-void
.end method

.method protected zza([Lcom/google/android/gms/internal/ads/zzho;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    return-void
.end method

.method public final zza([Lcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zznm;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaej:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 23
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaeg:Lcom/google/android/gms/internal/ads/zznm;

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaei:Z

    .line 25
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaeh:J

    .line 26
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzhb;->zza([Lcom/google/android/gms/internal/ads/zzho;J)V

    return-void
.end method

.method public final zzdo(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaej:Z

    .line 36
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaei:Z

    .line 37
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhb;->zza(JZ)V

    return-void
.end method

.method protected final zzdp(J)V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaeg:Lcom/google/android/gms/internal/ads/zznm;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaeh:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zznm;->zzeh(J)V

    return-void
.end method

.method public final zzdz()Lcom/google/android/gms/internal/ads/zzhw;
    .registers 1

    return-object p0
.end method

.method protected zze(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    return-void
.end method

.method public zzea()Lcom/google/android/gms/internal/ads/zzpd;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzeb()Lcom/google/android/gms/internal/ads/zznm;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaeg:Lcom/google/android/gms/internal/ads/zznm;

    return-object v0
.end method

.method public final zzec()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaei:Z

    return v0
.end method

.method public final zzed()V
    .registers 2

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaej:Z

    return-void
.end method

.method public final zzee()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaej:Z

    return v0
.end method

.method public final zzef()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaeg:Lcom/google/android/gms/internal/ads/zznm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznm;->zzhs()V

    return-void
.end method

.method public zzeg()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected zzeh()V
    .registers 1

    return-void
.end method

.method protected final zzei()Lcom/google/android/gms/internal/ads/zzhz;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaef:Lcom/google/android/gms/internal/ads/zzhz;

    return-object v0
.end method

.method protected final zzej()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaei:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaej:Z

    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhb;->zzaeg:Lcom/google/android/gms/internal/ads/zznm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznm;->isReady()Z

    move-result v0

    return v0
.end method
