.class Lcom/google/android/gms/nearby/messages/internal/zzbg;
.super Lcom/google/android/gms/nearby/messages/internal/zzab;


# static fields
.field private static final zzih:Lcom/google/android/gms/internal/nearby/zzha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/nearby/zzha<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzii:Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzbh;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzbh;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zzih:Lcom/google/android/gms/internal/nearby/zzha;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/common/api/internal/ListenerHolder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzab;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zzii:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method public onExpired()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zzii:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zzih:Lcom/google/android/gms/internal/nearby/zzha;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    :cond_9
    return-void
.end method
