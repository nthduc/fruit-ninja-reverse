.class final Lcom/google/android/gms/common/api/internal/zaao;
.super Lcom/google/android/gms/common/api/internal/zaas;
.source "com.google.android.gms:play-services-base@@17.2.1"


# instance fields
.field private final synthetic zago:Lcom/google/android/gms/common/api/internal/zaai;

.field private final zags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaai;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaao;->zago:Lcom/google/android/gms/common/api/internal/zaai;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zaas;-><init>(Lcom/google/android/gms/common/api/internal/zaai;Lcom/google/android/gms/common/api/internal/zaal;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaao;->zags:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final zaak()V
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaao;->zago:Lcom/google/android/gms/common/api/internal/zaai;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaai;->zad(Lcom/google/android/gms/common/api/internal/zaai;)Lcom/google/android/gms/common/api/internal/zabc;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabc;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaao;->zago:Lcom/google/android/gms/common/api/internal/zaai;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zaai;->zag(Lcom/google/android/gms/common/api/internal/zaai;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahe:Ljava/util/Set;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaao;->zags:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaao;->zago:Lcom/google/android/gms/common/api/internal/zaai;

    invoke-static {v4}, Lcom/google/android/gms/common/api/internal/zaai;->zah(Lcom/google/android/gms/common/api/internal/zaai;)Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaao;->zago:Lcom/google/android/gms/common/api/internal/zaai;

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/zaai;->zad(Lcom/google/android/gms/common/api/internal/zaai;)Lcom/google/android/gms/common/api/internal/zabc;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zabc;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    iget-object v5, v5, Lcom/google/android/gms/common/api/internal/zaau;->zahe:Ljava/util/Set;

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_19

    :cond_37
    return-void
.end method
