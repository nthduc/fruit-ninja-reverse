.class public final Lcom/google/android/gms/internal/ads/zzabr;
.super Lcom/google/android/gms/internal/ads/zzabw;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzczj:Lcom/google/android/gms/ads/internal/zzg;

.field private final zzczk:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzczl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabw;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzczj:Lcom/google/android/gms/ads/internal/zzg;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzczk:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzczl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzczl:Ljava/lang/String;

    return-object v0
.end method

.method public final recordClick()V
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzczj:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzg;->zzkc()V

    return-void
.end method

.method public final recordImpression()V
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzczj:Lcom/google/android/gms/ads/internal/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzg;->zzkd()V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzczj:Lcom/google/android/gms/ads/internal/zzg;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/zzg;->zzh(Landroid/view/View;)V

    return-void
.end method

.method public final zzrs()Ljava/lang/String;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzczk:Ljava/lang/String;

    return-object v0
.end method
