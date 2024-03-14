.class final Lcom/google/android/gms/internal/games/zzfj;
.super Lcom/google/android/gms/internal/games/zzfg;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/games/zzfg<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final zztd:Lcom/google/android/gms/internal/games/zzfj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/games/zzfj<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient mask:I

.field private final transient size:I

.field private final transient zzte:[Ljava/lang/Object;

.field private final transient zztf:[Ljava/lang/Object;

.field private final transient zztg:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 32
    new-instance v6, Lcom/google/android/gms/internal/games/zzfj;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/games/zzfj;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v6, Lcom/google/android/gms/internal/games/zzfj;->zztd:Lcom/google/android/gms/internal/games/zzfj;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzfg;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzfj;->zzte:[Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/games/zzfj;->zztf:[Ljava/lang/Object;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/games/zzfj;->mask:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/games/zzfj;->zztg:I

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/games/zzfj;->size:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfj;->zztf:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    if-nez v0, :cond_8

    goto :goto_27

    :cond_8
    if-nez p1, :cond_c

    const/4 v2, 0x0

    goto :goto_10

    .line 12
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10
    invoke-static {v2}, Lcom/google/android/gms/internal/games/zzex;->zzs(I)I

    move-result v2

    .line 14
    :goto_14
    iget v3, p0, Lcom/google/android/gms/internal/games/zzfj;->mask:I

    and-int/2addr v2, v3

    .line 15
    aget-object v3, v0, v2

    if-nez v3, :cond_1c

    return v1

    .line 18
    :cond_1c
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_27
    :goto_27
    return v1
.end method

.method public final hashCode()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/google/android/gms/internal/games/zzfj;->zztg:I

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfa;->zzdt()Lcom/google/android/gms/internal/games/zzfo;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/games/zzfj;->size:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 6

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfj;->zzte:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfj;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget p1, p0, Lcom/google/android/gms/internal/games/zzfj;->size:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final zzdt()Lcom/google/android/gms/internal/games/zzfo;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/games/zzfo<",
            "TE;>;"
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfa;->zzdx()Lcom/google/android/gms/internal/games/zzfb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfa;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games/zzfo;

    return-object v0
.end method

.method final zzdu()[Ljava/lang/Object;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfj;->zzte:[Ljava/lang/Object;

    return-object v0
.end method

.method final zzdv()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zzdw()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/google/android/gms/internal/games/zzfj;->size:I

    return v0
.end method

.method final zzea()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzeb()Lcom/google/android/gms/internal/games/zzfb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/games/zzfb<",
            "TE;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzfj;->zzte:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/games/zzfj;->size:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzfb;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/games/zzfb;

    move-result-object v0

    return-object v0
.end method
