.class final Lcom/google/android/gms/internal/ads/zzeon;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private pos:I

.field private final synthetic zziub:Lcom/google/android/gms/internal/ads/zzeoo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeoo;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeon;->zziub:Lcom/google/android/gms/internal/ads/zzeoo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeon;->pos:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeon;->pos:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeon;->zziub:Lcom/google/android/gms/internal/ads/zzeoo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeoo;->zziuc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeon;->zziub:Lcom/google/android/gms/internal/ads/zzeoo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeoo;->zziud:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 4
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeon;->pos:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeon;->zziub:Lcom/google/android/gms/internal/ads/zzeoo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeoo;->zziuc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeon;->zziub:Lcom/google/android/gms/internal/ads/zzeoo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeoo;->zziuc:Ljava/util/List;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeon;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzeon;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeon;->zziub:Lcom/google/android/gms/internal/ads/zzeoo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeoo;->zziuc:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeon;->zziub:Lcom/google/android/gms/internal/ads/zzeoo;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeoo;->zziud:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final remove()V
    .registers 2

    .line 8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
