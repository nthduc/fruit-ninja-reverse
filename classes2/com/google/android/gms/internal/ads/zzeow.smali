.class public final Lcom/google/android/gms/internal/ads/zzeow;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field private zziuq:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzbk(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "TT;>;)V"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    check-cast p0, Lcom/google/android/gms/internal/ads/zzeow;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeow;->zziuq:Lcom/google/android/gms/internal/ads/zzeph;

    if-nez v0, :cond_c

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeow;->zziuq:Lcom/google/android/gms/internal/ads/zzeph;

    return-void

    .line 8
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeow;->zziuq:Lcom/google/android/gms/internal/ads/zzeph;

    if-eqz v0, :cond_9

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
