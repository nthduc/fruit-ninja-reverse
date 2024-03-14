.class final synthetic Lcom/google/android/gms/internal/ads/zzczc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgsd:Lcom/google/android/gms/internal/ads/zzcza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcza;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgsd:Lcom/google/android/gms/internal/ads/zzcza;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczc;->zzgsd:Lcom/google/android/gms/internal/ads/zzcza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcza;->zzaqp()V

    return-void
.end method
