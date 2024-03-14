.class public final Lcom/google/android/gms/internal/ads/zzdev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdgu<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfmt:Lcom/google/android/gms/internal/ads/zzdnt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnt;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdev;->zzfmt:Lcom/google/android/gms/internal/ads/zzdnt;

    return-void
.end method


# virtual methods
.method public final synthetic zzs(Ljava/lang/Object;)V
    .registers 4

    .line 4
    check-cast p1, Landroid/os/Bundle;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdev;->zzfmt:Lcom/google/android/gms/internal/ads/zzdnt;

    if-eqz v0, :cond_1a

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnt;->zzate()Z

    move-result v0

    const-string v1, "render_in_browser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdev;->zzfmt:Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdnt;->zzatf()Z

    move-result v0

    const-string v1, "disable_ml"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1a
    return-void
.end method
