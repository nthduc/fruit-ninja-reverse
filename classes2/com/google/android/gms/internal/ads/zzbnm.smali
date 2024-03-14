.class public final Lcom/google/android/gms/internal/ads/zzbnm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfpi:Lcom/google/android/gms/internal/ads/zzbnj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnj;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfpi:Lcom/google/android/gms/internal/ads/zzbnj;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbnj;)Landroid/view/View;
    .registers 2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnj;->zzahm()Landroid/view/View;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfpi:Lcom/google/android/gms/internal/ads/zzbnj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbnm;->zza(Lcom/google/android/gms/internal/ads/zzbnj;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
