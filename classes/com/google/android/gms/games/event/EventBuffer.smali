.class public final Lcom/google/android/gms/games/event/EventBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;
.source "com.google.android.gms:play-services-games@@20.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
        "Lcom/google/android/gms/games/event/Event;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public final get(I)Lcom/google/android/gms/games/event/Event;
    .registers 4

    .line 3
    new-instance v0, Lcom/google/android/gms/games/event/EventRef;

    iget-object v1, p0, Lcom/google/android/gms/games/event/EventBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/event/EventRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/event/EventBuffer;->get(I)Lcom/google/android/gms/games/event/Event;

    move-result-object p1

    return-object p1
.end method
