.class final Lcom/google/android/gms/internal/ads/zzemm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private pos:I

.field private final synthetic zzinm:Lcom/google/android/gms/internal/ads/zzemk;

.field private zzinn:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzemk;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemm;->zzinm:Lcom/google/android/gms/internal/ads/zzemk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemm;->zzinm:Lcom/google/android/gms/internal/ads/zzemk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzemk;->zzb(Lcom/google/android/gms/internal/ads/zzemk;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzemm;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzemk;Lcom/google/android/gms/internal/ads/zzemj;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzemm;-><init>(Lcom/google/android/gms/internal/ads/zzemk;)V

    return-void
.end method

.method private final zzbir()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemm;->zzinn:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemm;->zzinm:Lcom/google/android/gms/internal/ads/zzemk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzemk;->zzd(Lcom/google/android/gms/internal/ads/zzemk;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzemm;->zzinn:Ljava/util/Iterator;

    .line 7
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemm;->zzinn:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemm;->pos:I

    if-lez v0, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemm;->zzinm:Lcom/google/android/gms/internal/ads/zzemk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzemk;->zzb(Lcom/google/android/gms/internal/ads/zzemk;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1a

    :cond_10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzemm;->zzbir()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 3

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzemm;->zzbir()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzemm;->zzbir()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 11
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemm;->zzinm:Lcom/google/android/gms/internal/ads/zzemk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzemk;->zzb(Lcom/google/android/gms/internal/ads/zzemk;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemm;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzemm;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
