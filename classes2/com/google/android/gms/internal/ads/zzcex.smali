.class public final Lcom/google/android/gms/internal/ads/zzcex;
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
.field private final zzgar:Lcom/google/android/gms/internal/ads/zzceu;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzceu;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcex;->zzgar:Lcom/google/android/gms/internal/ads/zzceu;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzceu;)Lcom/google/android/gms/internal/ads/zzcex;
    .registers 2

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcex;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcex;-><init>(Lcom/google/android/gms/internal/ads/zzceu;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
