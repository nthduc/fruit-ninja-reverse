.class final synthetic Lcom/google/android/gms/internal/ads/zzcbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbd;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    return-void
.end method

.method static zzh(Lcom/google/android/gms/internal/ads/zzbgj;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcbd;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbd;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->destroy()V

    return-void
.end method
