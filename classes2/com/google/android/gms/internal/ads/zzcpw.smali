.class final synthetic Lcom/google/android/gms/internal/ads/zzcpw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgki:Lcom/google/android/gms/internal/ads/zzcpt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcpt;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpw;->zzgki:Lcom/google/android/gms/internal/ads/zzcpt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpw;->zzgki:Lcom/google/android/gms/internal/ads/zzcpt;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpv;->zzapz()V

    return-void
.end method
