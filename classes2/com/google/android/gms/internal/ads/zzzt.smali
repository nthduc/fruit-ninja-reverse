.class final synthetic Lcom/google/android/gms/internal/ads/zzzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzckx:Lcom/google/android/gms/internal/ads/zzzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzt;->zzckx:Lcom/google/android/gms/internal/ads/zzzu;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzt;->zzckx:Lcom/google/android/gms/internal/ads/zzzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzu;->zzqy()V

    return-void
.end method
