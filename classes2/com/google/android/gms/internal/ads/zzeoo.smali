.class public Lcom/google/android/gms/internal/ads/zzeoo;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final zzdc:Lcom/google/android/gms/internal/ads/zzeoq;


# instance fields
.field zziuc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field zziud:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/google/android/gms/internal/ads/zzeoo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeoq;->zzn(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeoq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeoo;->zzdc:Lcom/google/android/gms/internal/ads/zzeoq;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoo;->zziuc:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoo;->zziud:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoo;->zziuc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_f

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoo;->zziuc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoo;->zziud:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoo;->zziuc:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeoo;->zziud:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeoo;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_27
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeon;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeon;-><init>(Lcom/google/android/gms/internal/ads/zzeoo;)V

    return-object v0
.end method

.method public size()I
    .registers 3

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeoo;->zzdc:Lcom/google/android/gms/internal/ads/zzeoq;

    const-string v1, "potentially expensive size() call"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeoq;->zzik(Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeoo;->zzdc:Lcom/google/android/gms/internal/ads/zzeoq;

    const-string v1, "blowup running"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeoq;->zzik(Ljava/lang/String;)V

    .line 15
    :goto_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoo;->zziud:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoo;->zziuc:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeoo;->zziud:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 17
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoo;->zziuc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
