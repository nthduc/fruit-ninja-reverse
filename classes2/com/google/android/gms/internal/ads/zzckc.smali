.class final synthetic Lcom/google/android/gms/internal/ads/zzckc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final zzgfm:Lcom/google/android/gms/internal/ads/zzcjv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckc;->zzgfm:Lcom/google/android/gms/internal/ads/zzcjv;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckc;->zzgfm:Lcom/google/android/gms/internal/ads/zzcjv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcjv;->zzae(Landroid/view/View;)V

    return-void
.end method
