.class public final Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field zzph:I

.field final zzpv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field zzpw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field zzpx:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final zzpy:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;

.field zzpz:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;

.field zzqa:Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;

.field zzqb:Ljava/lang/String;

.field zzqc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzqd:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqb:Ljava/lang/String;

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzph:I

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqc:Ljava/util/ArrayList;

    const-string v1, "Must provide a RoomUpdateCallback"

    .line 14
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpy:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;Lcom/google/android/gms/games/multiplayer/realtime/zzc;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqb:Ljava/lang/String;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzph:I

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqc:Ljava/util/ArrayList;

    const-string v1, "Must provide a RoomUpdateListener"

    .line 6
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpy:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/zzc;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V

    return-void
.end method


# virtual methods
.method public final addPlayersToInvite(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .registers 3
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final varargs addPlayersToInvite([Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .registers 3
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqc:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
    .registers 2

    .line 39
    new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/multiplayer/realtime/zzd;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;)V

    return-object v0
.end method

.method public final setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqd:Landroid/os/Bundle;

    return-object p0
.end method

.method public final setInvitationIdToAccept(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .registers 2

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqb:Ljava/lang/String;

    return-object p0
.end method

.method public final setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpx:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-object p0
.end method

.method public final setOnMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .registers 2
    .param p1    # Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqa:Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;

    return-object p0
.end method

.method public final setRoomStatusUpdateCallback(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .registers 2
    .param p1    # Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpz:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;

    return-object p0
.end method

.method public final setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    return-object p0
.end method

.method public final setVariant(I)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    if-lez p1, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    const-string v1, "Variant must be a positive integer or Room.ROOM_VARIANT_ANY"

    .line 34
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 35
    iput p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzph:I

    return-object p0
.end method
