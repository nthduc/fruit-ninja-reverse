.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$20;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-runtime@@2.2.1"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# static fields
.field private static final instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$20;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$20;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$20;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$20;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$20;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;
    .registers 1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$20;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$20;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->lambda$loadActiveContexts$8(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
