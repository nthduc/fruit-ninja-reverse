.class final Lcom/google/android/gms/internal/ads/zzalo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbci;


# instance fields
.field private final synthetic zzdib:Lcom/google/android/gms/internal/ads/zzali;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalm;Lcom/google/android/gms/internal/ads/zzali;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzdib:Lcom/google/android/gms/internal/ads/zzali;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    const-string v0, "Rejecting reference for JS Engine."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalo;->zzdib:Lcom/google/android/gms/internal/ads/zzali;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbcn;->reject()V

    return-void
.end method
