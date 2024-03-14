.class public final Lcom/google/android/gms/internal/ads/zzcxz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeoy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        "ListenerT::Lcom/google/android/gms/internal/ads/zzbvp;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeoy<",
        "Lcom/google/android/gms/internal/ads/zzcxv<",
        "TAdT;TAdapterT;T",
        "ListenerT;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzfmi:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzctb<",
            "TAdapterT;T",
            "ListenerT;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzfqk:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdzb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfqv:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdsi;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgre:Lcom/google/android/gms/internal/ads/zzeph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcti<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdsi;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdzb;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzctb<",
            "TAdapterT;T",
            "ListenerT;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcti<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxz;->zzfqv:Lcom/google/android/gms/internal/ads/zzeph;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxz;->zzfqk:Lcom/google/android/gms/internal/ads/zzeph;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxz;->zzfmi:Lcom/google/android/gms/internal/ads/zzeph;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcxz;->zzgre:Lcom/google/android/gms/internal/ads/zzeph;

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)Lcom/google/android/gms/internal/ads/zzcxz;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AdT:",
            "Ljava/lang/Object;",
            "AdapterT:",
            "Ljava/lang/Object;",
            "ListenerT::Lcom/google/android/gms/internal/ads/zzbvp;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdsi;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzdzb;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzctb<",
            "TAdapterT;T",
            "ListenerT;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcti<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/zzcxz<",
            "TAdT;TAdapterT;T",
            "ListenerT;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxz;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcxz;-><init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzeph;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .registers 6

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxz;->zzfqv:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcxz;->zzfqk:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcxz;->zzfmi:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzctb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcxz;->zzgre:Lcom/google/android/gms/internal/ads/zzeph;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcti;

    .line 10
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcxv;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcxv;-><init>(Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/internal/ads/zzctb;Lcom/google/android/gms/internal/ads/zzcti;)V

    return-object v4
.end method
