.class final Lcom/google/android/gms/internal/ads/zzdqe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzhhj:Lcom/google/android/gms/internal/ads/zzdqd;

.field private zzhhk:I

.field private zzhhl:I

.field private zzhhm:I

.field private zzhhn:I

.field private zzhho:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdqd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhj:Lcom/google/android/gms/internal/ads/zzdqd;

    return-void
.end method


# virtual methods
.method public final zzaug()V
    .registers 2

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhm:I

    return-void
.end method

.method public final zzauh()V
    .registers 2

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhn:I

    return-void
.end method

.method public final zzaui()V
    .registers 3

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhk:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhk:I

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhj:Lcom/google/android/gms/internal/ads/zzdqd;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdqd;->zzhhh:Z

    return-void
.end method

.method public final zzauj()V
    .registers 3

    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhl:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhl:I

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhj:Lcom/google/android/gms/internal/ads/zzdqd;

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdqd;->zzhhi:Z

    return-void
.end method

.method public final zzauk()V
    .registers 2

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhho:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhho:I

    return-void
.end method

.method public final zzaul()Lcom/google/android/gms/internal/ads/zzdqd;
    .registers 4

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhj:Lcom/google/android/gms/internal/ads/zzdqd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqd;

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhj:Lcom/google/android/gms/internal/ads/zzdqd;

    const/4 v2, 0x0

    .line 17
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdqd;->zzhhh:Z

    .line 18
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdqd;->zzhhi:Z

    return-object v0
.end method

.method public final zzaum()Ljava/lang/String;
    .registers 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\tPool does not exist: "

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNew pools created: "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tPools removed: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tEntries added: "

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhho:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tNo entries retrieved: "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqe;->zzhhn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
