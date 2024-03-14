.class final Lcom/google/android/gms/internal/ads/zzcix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahq<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgeu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final zzgev:Ljava/lang/String;

.field private final zzgew:Lcom/google/android/gms/internal/ads/zzahq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final synthetic zzgex:Lcom/google/android/gms/internal/ads/zzcil;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzgex:Lcom/google/android/gms/internal/ads/zzcil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzgeu:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzgev:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzgew:Lcom/google/android/gms/internal/ads/zzahq;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;Lcom/google/android/gms/internal/ads/zzciq;)V
    .registers 6

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcix;-><init>(Lcom/google/android/gms/internal/ads/zzcil;Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzgeu:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzgex:Lcom/google/android/gms/internal/ads/zzcil;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzgev:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/internal/ads/zzcil;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void

    .line 10
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcix;->zzgew:Lcom/google/android/gms/internal/ads/zzahq;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzahq;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
