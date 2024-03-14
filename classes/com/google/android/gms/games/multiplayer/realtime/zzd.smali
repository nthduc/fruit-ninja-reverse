.class public final Lcom/google/android/gms/games/multiplayer/realtime/zzd;
.super Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
.source "com.google.android.gms:play-services-games@@20.0.1"


# instance fields
.field private final zzpc:Ljava/lang/String;

.field private final zzph:I

.field private final zzpv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzpw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzpx:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzpy:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;

.field private final zzpz:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;

.field private final zzqa:Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;

.field private final zzqd:Landroid/os/Bundle;

.field private final zzqi:Lcom/google/android/gms/games/multiplayer/realtime/zzg;

.field private final zzqj:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpx:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpx:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpy:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpy:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzpz:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpz:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqa:Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzqa:Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpz:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;

    if-eqz v0, :cond_2b

    .line 9
    new-instance v1, Lcom/google/android/gms/games/multiplayer/realtime/zzg;

    iget-object v2, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpy:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;

    iget-object v3, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzqa:Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/games/multiplayer/realtime/zzg;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;)V

    iput-object v1, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzqi:Lcom/google/android/gms/games/multiplayer/realtime/zzg;

    goto :goto_2e

    :cond_2b
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzqi:Lcom/google/android/gms/games/multiplayer/realtime/zzg;

    .line 11
    :goto_2e
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpc:Ljava/lang/String;

    .line 12
    iget v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzph:I

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzph:I

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqd:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzqd:Landroid/os/Bundle;

    .line 14
    iget-object v0, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 15
    iget-object p1, p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->zzqc:Ljava/util/ArrayList;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzqj:[Ljava/lang/String;

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzqa:Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;

    if-nez p1, :cond_5d

    iget-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpx:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    if-eqz p1, :cond_55

    goto :goto_5d

    .line 17
    :cond_55
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Must specify a message listener"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    :goto_5d
    return-void
.end method


# virtual methods
.method public final getAutoMatchCriteria()Landroid/os/Bundle;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzqd:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getInvitationId()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpc:Ljava/lang/String;

    return-object v0
.end method

.method public final getInvitedPlayerIds()[Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzqj:[Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpx:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-object v0
.end method

.method public final getOnMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzqa:Lcom/google/android/gms/games/multiplayer/realtime/OnRealTimeMessageReceivedListener;

    return-object v0
.end method

.method public final getRoomStatusUpdateCallback()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpz:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateCallback;

    return-object v0
.end method

.method public final getRoomStatusUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpw:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    return-object v0
.end method

.method public final getRoomUpdateCallback()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpy:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateCallback;

    return-object v0
.end method

.method public final getRoomUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzpv:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    return-object v0
.end method

.method public final getVariant()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzph:I

    return v0
.end method

.method public final zzdo()Lcom/google/android/gms/games/multiplayer/realtime/zzh;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/zzd;->zzqi:Lcom/google/android/gms/games/multiplayer/realtime/zzg;

    return-object v0
.end method
