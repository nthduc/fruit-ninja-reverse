.class public final Lcom/google/android/gms/internal/ads/zzdwv;
.super Lcom/google/android/gms/internal/ads/zzdwn;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdwn<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private zzahv:I

.field private zzhqw:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwn;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;-><init>(I)V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdws;->zzen(I)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqw:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/zzdwm;
    .registers 3

    .line 30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwm;->zzaa(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwm;

    goto :goto_3

    :cond_11
    return-object p0
.end method

.method public final synthetic zzaa(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwm;
    .registers 7

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqw:[Ljava/lang/Object;

    if-eqz v0, :cond_39

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->size:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdws;->zzen(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqw:[Ljava/lang/Object;

    array-length v2, v1

    if-gt v0, v2, :cond_39

    .line 39
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 41
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdwl;->zzel(I)I

    move-result v2

    :goto_1d
    and-int/2addr v2, v0

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqw:[Ljava/lang/Object;

    aget-object v4, v3, v2

    if-nez v4, :cond_2f

    .line 45
    aput-object p1, v3, v2

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzahv:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzahv:I

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwn;

    goto :goto_38

    .line 49
    :cond_2f
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_38
    :goto_38
    return-object p0

    :cond_39
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqw:[Ljava/lang/Object;

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwn;

    return-object p0
.end method

.method public final synthetic zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwn;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwm;->zzaa(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdwv;

    return-object p1
.end method

.method public final zzaxu()Lcom/google/android/gms/internal/ads/zzdws;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdws<",
            "TE;>;"
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->size:I

    if-eqz v0, :cond_5b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqw:[Ljava/lang/Object;

    if-eqz v0, :cond_3d

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->size:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdws;->zzen(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqw:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_3d

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->size:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqk:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdws;->zzw(II)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqk:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdwv;->size:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_2c

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqk:[Ljava/lang/Object;

    :goto_2c
    move-object v3, v0

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxf;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzahv:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqw:[Ljava/lang/Object;

    array-length v2, v5

    add-int/lit8 v6, v2, -0x1

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzdwv;->size:I

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdxf;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_4b

    .line 14
    :cond_3d
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->size:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqk:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdws;->zzb(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdws;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdws;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdwv;->size:I

    .line 16
    :goto_4b
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhql:Z

    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqw:[Ljava/lang/Object;

    return-object v0

    .line 9
    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqk:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdws;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdws;

    move-result-object v0

    return-object v0

    .line 7
    :cond_5b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxf;->zzhrf:Lcom/google/android/gms/internal/ads/zzdxf;

    return-object v0
.end method

.method public final synthetic zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdwm;
    .registers 3

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwd;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwv;->zzhqw:[Ljava/lang/Object;

    if-eqz v0, :cond_19

    .line 22
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdwm;->zzaa(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdwm;

    goto :goto_b

    .line 25
    :cond_19
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdwm;

    :cond_1c
    return-object p0
.end method
