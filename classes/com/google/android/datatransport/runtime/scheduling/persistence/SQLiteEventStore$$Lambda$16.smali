.class final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-runtime@@2.2.1"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# static fields
.field private static final instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;
    .registers 1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$16;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->lambda$readPayload$13(Landroid/database/Cursor;)[B

    move-result-object p1

    return-object p1
.end method
