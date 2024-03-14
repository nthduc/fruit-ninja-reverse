.class public final Lcom/google/android/gms/internal/ads/zzepi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeph<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zziuo:Ljava/lang/Object;


# instance fields
.field private volatile zzedi:Ljava/lang/Object;

.field private volatile zziup:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzepi;->zziuo:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzepi;->zziuo:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepi;->zzedi:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzepi;->zziup:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zzas(Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzeph;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "TT;>;"
        }
    .end annotation

    .line 14
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzepi;

    if-nez v0, :cond_15

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzeov;

    if-eqz v0, :cond_9

    goto :goto_15

    .line 16
    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzepi;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzeph;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzepi;-><init>(Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0

    :cond_15
    :goto_15
    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepi;->zzedi:Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzepi;->zziuo:Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepi;->zziup:Lcom/google/android/gms/internal/ads/zzeph;

    if-nez v0, :cond_d

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzepi;->zzedi:Ljava/lang/Object;

    goto :goto_16

    .line 10
    :cond_d
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzepi;->zzedi:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzepi;->zziup:Lcom/google/android/gms/internal/ads/zzeph;

    :cond_16
    :goto_16
    return-object v0
.end method
