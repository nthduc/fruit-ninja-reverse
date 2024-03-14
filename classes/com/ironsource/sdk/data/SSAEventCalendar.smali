.class public Lcom/ironsource/sdk/data/SSAEventCalendar;
.super Lcom/ironsource/sdk/data/SSAObj;
.source "SSAEventCalendar.java"


# instance fields
.field private DAILY:Ljava/lang/String;

.field private DAYS_IN_MONTH:Ljava/lang/String;

.field private DAYS_IN_WEEK:Ljava/lang/String;

.field private DAYS_IN_YEAR:Ljava/lang/String;

.field private DESCRIPTION:Ljava/lang/String;

.field private END:Ljava/lang/String;

.field private EXCEPTIONDATES:Ljava/lang/String;

.field private EXPIRES:Ljava/lang/String;

.field private FREQUENCY:Ljava/lang/String;

.field private ID:Ljava/lang/String;

.field private INTERVAL:Ljava/lang/String;

.field private MONTHLY:Ljava/lang/String;

.field private MONTHS_IN_YEAR:Ljava/lang/String;

.field private RECURRENCE:Ljava/lang/String;

.field private REMINDER:Ljava/lang/String;

.field private START:Ljava/lang/String;

.field private STATUS:Ljava/lang/String;

.field private WEEKLY:Ljava/lang/String;

.field private WEEKS_IN_MONTH:Ljava/lang/String;

.field private YEARLY:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mEnd:Ljava/lang/String;

.field private mStart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 6
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->ID:Ljava/lang/String;

    const-string p1, "description"

    .line 7
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->DESCRIPTION:Ljava/lang/String;

    const-string p1, "init"

    .line 8
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->START:Ljava/lang/String;

    const-string p1, "end"

    .line 9
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->END:Ljava/lang/String;

    const-string p1, "status"

    .line 10
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->STATUS:Ljava/lang/String;

    const-string p1, "recurrence"

    .line 11
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->RECURRENCE:Ljava/lang/String;

    const-string p1, "reminder"

    .line 12
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->REMINDER:Ljava/lang/String;

    const-string p1, "frequency"

    .line 15
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->FREQUENCY:Ljava/lang/String;

    const-string p1, "interval"

    .line 16
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->INTERVAL:Ljava/lang/String;

    const-string p1, "expires"

    .line 17
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->EXPIRES:Ljava/lang/String;

    const-string p1, "exceptionDates"

    .line 18
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->EXCEPTIONDATES:Ljava/lang/String;

    const-string p1, "daysInWeek"

    .line 19
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->DAYS_IN_WEEK:Ljava/lang/String;

    const-string p1, "daysInMonth"

    .line 20
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->DAYS_IN_MONTH:Ljava/lang/String;

    const-string p1, "daysInYear"

    .line 21
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->DAYS_IN_YEAR:Ljava/lang/String;

    const-string p1, "weeksInMonth"

    .line 22
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->WEEKS_IN_MONTH:Ljava/lang/String;

    const-string p1, "monthsInYear"

    .line 23
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->MONTHS_IN_YEAR:Ljava/lang/String;

    const-string p1, "daily"

    .line 26
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->DAILY:Ljava/lang/String;

    const-string p1, "weekly"

    .line 27
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->WEEKLY:Ljava/lang/String;

    const-string p1, "monthly"

    .line 28
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->MONTHLY:Ljava/lang/String;

    const-string p1, "yearly"

    .line 29
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->YEARLY:Ljava/lang/String;

    .line 38
    iget-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->DESCRIPTION:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/SSAEventCalendar;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 39
    iget-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->DESCRIPTION:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/SSAEventCalendar;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/SSAEventCalendar;->setDescription(Ljava/lang/String;)V

    .line 42
    :cond_64
    iget-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->START:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/SSAEventCalendar;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 43
    iget-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->START:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/SSAEventCalendar;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/SSAEventCalendar;->setStart(Ljava/lang/String;)V

    .line 46
    :cond_75
    iget-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->END:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/SSAEventCalendar;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_86

    .line 47
    iget-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->END:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/SSAEventCalendar;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/data/SSAEventCalendar;->setEnd(Ljava/lang/String;)V

    :cond_86
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->mEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->mStart:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->mEnd:Ljava/lang/String;

    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAEventCalendar;->mStart:Ljava/lang/String;

    return-void
.end method
