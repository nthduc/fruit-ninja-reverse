.class public final Lcom/google/android/gms/internal/ads/zzbae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field public final count:I

.field public final name:Ljava/lang/String;

.field private final zzecj:D

.field private final zzeck:D

.field public final zzecl:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DDDI)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbae;->name:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzeck:D

    .line 4
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzecj:D

    .line 5
    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzecl:D

    .line 6
    iput p8, p0, Lcom/google/android/gms/internal/ads/zzbae;->count:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    .line 16
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbae;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 18
    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbae;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbae;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbae;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzecj:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzbae;->zzecj:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_34

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzeck:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzbae;->zzeck:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_34

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbae;->count:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzbae;->count:I

    if-ne v0, v2, :cond_34

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzecl:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzbae;->zzecl:D

    .line 20
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_34

    const/4 p1, 0x1

    return p1

    :cond_34
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbae;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzecj:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzeck:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzecl:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbae;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbae;->name:Ljava/lang/String;

    const-string v2, "name"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzeck:D

    .line 10
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "minBound"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzecj:D

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "maxBound"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbae;->zzecl:D

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "percent"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbae;->count:I

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
