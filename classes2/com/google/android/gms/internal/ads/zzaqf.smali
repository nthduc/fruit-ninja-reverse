.class public final Lcom/google/android/gms/internal/ads/zzaqf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzdnp:Z

.field private final zzdnq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    const-string p1, "forceOrientation"

    .line 3
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdnq:Ljava/lang/String;

    const-string p1, "allowOrientationChange"

    .line 4
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdnp:Z

    return-void

    :cond_24
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdnp:Z

    return-void
.end method


# virtual methods
.method public final execute()V
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    if-nez v0, :cond_a

    const-string v0, "AdWebView is null"

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdnq:Ljava/lang/String;

    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    const/4 v0, 0x7

    goto :goto_36

    .line 14
    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdnq:Ljava/lang/String;

    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    const/4 v0, 0x6

    goto :goto_36

    .line 16
    :cond_28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdnp:Z

    if-eqz v0, :cond_2e

    const/4 v0, -0x1

    goto :goto_36

    .line 18
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazd;->zzxw()I

    move-result v0

    .line 19
    :goto_36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaqf;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbgj;->setRequestedOrientation(I)V

    return-void
.end method
