.class final Lcom/google/android/gms/common/api/internal/zacr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zacs;


# instance fields
.field private final synthetic zalj:Lcom/google/android/gms/common/api/internal/zaco;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaco;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacr;->zalj:Lcom/google/android/gms/common/api/internal/zaco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zac(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacr;->zalj:Lcom/google/android/gms/common/api/internal/zaco;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaco;->zale:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/PendingResult;->zal()Ljava/lang/Integer;

    return-void
.end method
