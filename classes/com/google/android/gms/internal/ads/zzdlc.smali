.class final Lcom/google/android/gms/internal/ads/zzdlc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdqy;"
    }
.end annotation


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public final zzbuu:Ljava/lang/String;

.field public final zzdqr:Lcom/google/android/gms/internal/ads/zzvg;

.field public final zzgvr:Lcom/google/android/gms/internal/ads/zzvs;

.field public final zzhbq:Lcom/google/android/gms/internal/ads/zzdlx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdlx<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final zzhbr:Lcom/google/android/gms/internal/ads/zzdlw;

.field private final zzhbs:Lcom/google/android/gms/internal/ads/zzdqj;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlx;Lcom/google/android/gms/internal/ads/zzdlw;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzdqj;)V
    .registers 8
    .param p7    # Lcom/google/android/gms/internal/ads/zzdqj;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdlx<",
            "TR;>;",
            "Lcom/google/android/gms/internal/ads/zzdlw;",
            "Lcom/google/android/gms/internal/ads/zzvg;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzvs;",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzhbq:Lcom/google/android/gms/internal/ads/zzdlx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzhbr:Lcom/google/android/gms/internal/ads/zzdlw;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzdqr:Lcom/google/android/gms/internal/ads/zzvg;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzbuu:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdlc;->executor:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzgvr:Lcom/google/android/gms/internal/ads/zzvs;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzhbs:Lcom/google/android/gms/internal/ads/zzdqj;

    return-void
.end method


# virtual methods
.method public final getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlc;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzasx()Lcom/google/android/gms/internal/ads/zzdqj;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzhbs:Lcom/google/android/gms/internal/ads/zzdqj;

    return-object v0
.end method

.method public final zzasy()Lcom/google/android/gms/internal/ads/zzdqy;
    .registers 10

    .line 12
    new-instance v8, Lcom/google/android/gms/internal/ads/zzdlc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzhbq:Lcom/google/android/gms/internal/ads/zzdlx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzhbr:Lcom/google/android/gms/internal/ads/zzdlw;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzdqr:Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzbuu:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdlc;->executor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzgvr:Lcom/google/android/gms/internal/ads/zzvs;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdlc;->zzhbs:Lcom/google/android/gms/internal/ads/zzdqj;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdlc;-><init>(Lcom/google/android/gms/internal/ads/zzdlx;Lcom/google/android/gms/internal/ads/zzdlw;Lcom/google/android/gms/internal/ads/zzvg;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzdqj;)V

    return-object v8
.end method
