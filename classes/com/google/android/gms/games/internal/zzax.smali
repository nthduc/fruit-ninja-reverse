.class final synthetic Lcom/google/android/gms/games/internal/zzax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Lcom/google/android/gms/games/internal/zzf$zzay;


# static fields
.field static final zziz:Lcom/google/android/gms/games/internal/zzf$zzay;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/internal/zzax;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/zzax;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/zzax;->zziz:Lcom/google/android/gms/games/internal/zzf$zzay;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    invoke-interface {p1, p2}, Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;->onDisconnectedFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V

    return-void
.end method
