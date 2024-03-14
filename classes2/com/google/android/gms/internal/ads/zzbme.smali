.class public final Lcom/google/android/gms/internal/ads/zzbme;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbma;


# instance fields
.field private final zzfmt:Lcom/google/android/gms/internal/ads/zzdnt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnt;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbme;->zzfmt:Lcom/google/android/gms/internal/ads/zzdnt;

    return-void
.end method


# virtual methods
.method public final zzl(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "render_in_browser"

    .line 4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 6
    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbme;->zzfmt:Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdnt;->zzbn(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_18

    return-void

    .line 9
    :catch_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid render_in_browser state"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_20
    return-void
.end method
