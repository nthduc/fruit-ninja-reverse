.class Lcom/iab/omid/library/adcolony/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    const-string v1, "<(head)( [^>]*)?>"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/iab/omid/library/adcolony/c;->a:Ljava/util/regex/Pattern;

    const-string v1, "<(head)( [^>]*)?/>"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/iab/omid/library/adcolony/c;->b:Ljava/util/regex/Pattern;

    const-string v1, "<(body)( [^>]*?)?>"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/iab/omid/library/adcolony/c;->c:Ljava/util/regex/Pattern;

    const-string v1, "<(body)( [^>]*?)?/>"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/iab/omid/library/adcolony/c;->d:Ljava/util/regex/Pattern;

    const-string v1, "<(html)( [^>]*?)?>"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/iab/omid/library/adcolony/c;->e:Ljava/util/regex/Pattern;

    const-string v1, "<(html)( [^>]*?)?/>"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/iab/omid/library/adcolony/c;->f:Ljava/util/regex/Pattern;

    const-string v1, "<!DOCTYPE [^>]*>"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/iab/omid/library/adcolony/c;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<script type=\"text/javascript\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</script>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/iab/omid/library/adcolony/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(I[[I)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    array-length v1, p1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_16

    aget-object v3, p1, v2

    aget v4, v3, v0

    if-lt p0, v4, :cond_13

    const/4 v4, 0x1

    aget v3, v3, v4

    if-gt p0, v3, :cond_13

    return v4

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_16
    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;Ljava/lang/String;[[I)Z
    .registers 8

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-static {v1, p4}, Lcom/iab/omid/library/adcolony/c;->a(I[[I)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result p4

    invoke-virtual {p0, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    return p0

    :cond_35
    move v1, v2

    goto :goto_6

    :cond_37
    return v0
.end method

.method private static a(Ljava/lang/String;)[[I
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    const/4 v4, 0x2

    if-ge v3, v1, :cond_36

    const-string v5, "<!--"

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_34

    const-string v5, "-->"

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_2b

    new-array v4, v4, [I

    aput v3, v4, v2

    aput v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v5, 0x3

    goto :goto_b

    :cond_2b
    new-array v4, v4, [I

    aput v3, v4, v2

    aput v1, v4, v6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    move v3, v1

    goto :goto_b

    :cond_36
    filled-new-array {v2, v4}, [I

    move-result-object p0

    const-class v1, I

    invoke-static {v1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "HTML is null or empty"

    invoke-static {p0, v0}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iab/omid/library/adcolony/c;->a(Ljava/lang/String;)[[I

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v1, Lcom/iab/omid/library/adcolony/c;->b:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1, p1, v0}, Lcom/iab/omid/library/adcolony/c;->b(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;Ljava/lang/String;[[I)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    sget-object v1, Lcom/iab/omid/library/adcolony/c;->a:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1, p1, v0}, Lcom/iab/omid/library/adcolony/c;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;Ljava/lang/String;[[I)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    sget-object v1, Lcom/iab/omid/library/adcolony/c;->d:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1, p1, v0}, Lcom/iab/omid/library/adcolony/c;->b(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;Ljava/lang/String;[[I)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_40
    sget-object v1, Lcom/iab/omid/library/adcolony/c;->c:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1, p1, v0}, Lcom/iab/omid/library/adcolony/c;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;Ljava/lang/String;[[I)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4d
    sget-object v1, Lcom/iab/omid/library/adcolony/c;->f:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1, p1, v0}, Lcom/iab/omid/library/adcolony/c;->b(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;Ljava/lang/String;[[I)Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5a
    sget-object v1, Lcom/iab/omid/library/adcolony/c;->e:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1, p1, v0}, Lcom/iab/omid/library/adcolony/c;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;Ljava/lang/String;[[I)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_67
    sget-object v1, Lcom/iab/omid/library/adcolony/c;->g:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1, p1, v0}, Lcom/iab/omid/library/adcolony/c;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;Ljava/lang/String;[[I)Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/regex/Pattern;Ljava/lang/String;[[I)Z
    .registers 8

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-static {v1, p4}, Lcom/iab/omid/library/adcolony/c;->a(I[[I)Z

    move-result v1

    if-nez v1, :cond_4b

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result p4

    add-int/lit8 p4, p4, -0x2

    invoke-virtual {p0, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ">"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "</"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return p3

    :cond_4b
    move v1, v2

    goto :goto_6

    :cond_4d
    return v0
.end method
