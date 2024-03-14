.class final synthetic Lcom/google/android/gms/internal/ads/zzabe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwe;


# instance fields
.field private final zzcyt:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcyt:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabe;->zzcyt:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzj(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
