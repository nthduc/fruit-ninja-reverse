.class public Lcom/google/android/gms/internal/ads/zzbot;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final view:Landroid/view/View;

.field private final zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

.field private final zzfqb:Lcom/google/android/gms/internal/ads/zzbql;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzbql;Lcom/google/android/gms/internal/ads/zzdnu;)V
    .registers 5
    .param p2    # Lcom/google/android/gms/internal/ads/zzbgj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbot;->view:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbot;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbot;->zzfqb:Lcom/google/android/gms/internal/ads/zzbql;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbot;->zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

    return-void
.end method


# virtual methods
.method public zza(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzbvr;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcab<",
            "Lcom/google/android/gms/internal/ads/zzbvs;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/zzbvr;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbvr;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final zzahl()Lcom/google/android/gms/internal/ads/zzbgj;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbot;->zzdgy:Lcom/google/android/gms/internal/ads/zzbgj;

    return-object v0
.end method

.method public final zzahx()Landroid/view/View;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbot;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzaij()Lcom/google/android/gms/internal/ads/zzbql;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbot;->zzfqb:Lcom/google/android/gms/internal/ads/zzbql;

    return-object v0
.end method

.method public final zzaik()Lcom/google/android/gms/internal/ads/zzdnu;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbot;->zzfpe:Lcom/google/android/gms/internal/ads/zzdnu;

    return-object v0
.end method
