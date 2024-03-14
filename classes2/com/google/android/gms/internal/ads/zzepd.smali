.class public final Lcom/google/android/gms/internal/ads/zzepd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Ljava/util/Set<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final zziut:Lcom/google/android/gms/internal/ads/zzeoy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeoy<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final zziuu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final zziuv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Collection<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeox;->zzba(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzeoy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzepd;->zziut:Lcom/google/android/gms/internal/ads/zzeoy;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "TT;>;>;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Ljava/util/Collection<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepd;->zziuu:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzepd;->zziuv:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzepg;)V
    .registers 4

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzepd;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static zzar(II)Lcom/google/android/gms/internal/ads/zzepf;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/android/gms/internal/ads/zzepf<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzepf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzepf;-><init>(IILcom/google/android/gms/internal/ads/zzepg;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 8

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepd;->zziuu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepd;->zziuv:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepd;->zziuv:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v2, :cond_35

    .line 11
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzepd;->zziuv:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 12
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v4, v6

    .line 13
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 15
    :cond_35
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeot;->zzhz(I)Ljava/util/HashSet;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzepd;->zziuu:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v2, :cond_58

    .line 17
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzepd;->zziuu:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 19
    :cond_58
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_5c
    if-ge v3, v2, :cond_7d

    .line 20
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 21
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 24
    :cond_7d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
