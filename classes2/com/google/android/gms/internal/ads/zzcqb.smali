.class final synthetic Lcom/google/android/gms/internal/ads/zzcqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgkl:Lcom/google/android/gms/internal/ads/zzcqc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqb;->zzgkl:Lcom/google/android/gms/internal/ads/zzcqc;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqb;->zzgkl:Lcom/google/android/gms/internal/ads/zzcqc;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcpv;->zzapz()V

    return-void
.end method
