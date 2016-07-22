.class Landroid/support/v7/preference/f;
.super Ljava/lang/Object;
.source "PreferenceInflater.java"


# static fields
.field private static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:[Ljava/lang/Object;

.field private e:Landroid/support/v7/preference/g;

.field private f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v7/preference/f;->a:[Ljava/lang/Class;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/preference/f;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/g;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/preference/f;->d:[Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Landroid/support/v7/preference/f;->c:Landroid/content/Context;

    .line 61
    invoke-direct {p0, p2}, Landroid/support/v7/preference/f;->a(Landroid/support/v7/preference/g;)V

    .line 62
    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 219
    sget-object v0, Landroid/support/v7/preference/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 222
    if-nez v0, :cond_2

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/preference/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 227
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_3

    .line 228
    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 249
    :cond_1
    sget-object v1, Landroid/support/v7/preference/f;->a:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 250
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 251
    sget-object v1, Landroid/support/v7/preference/f;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_2
    iget-object v1, p0, Landroid/support/v7/preference/f;->d:[Ljava/lang/Object;

    .line 255
    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    return-object v0

    .line 231
    :cond_3
    array-length v5, p2

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v0, p2, v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 233
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 239
    :goto_1
    if-nez v0, :cond_1

    .line 240
    if-nez v3, :cond_4

    .line 241
    :try_start_2
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Error inflating class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 258
    :catch_0
    move-exception v0

    .line 260
    throw v0

    .line 235
    :catch_1
    move-exception v0

    .line 231
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_0

    .line 245
    :cond_4
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 261
    :catch_2
    move-exception v0

    .line 262
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 265
    throw v1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    iget-object v0, p0, Landroid/support/v7/preference/f;->e:Landroid/support/v7/preference/g;

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceGroup;->a(Landroid/support/v7/preference/g;)V

    .line 195
    :goto_0
    return-object p2

    :cond_0
    move-object p2, p1

    goto :goto_0
.end method

.method private a(Landroid/support/v7/preference/g;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    iput-object p1, p0, Landroid/support/v7/preference/f;->e:Landroid/support/v7/preference/g;

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.support.v14.preference."

    aput-object v1, v0, v2

    const-string v1, "android.support.v7.preference."

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/f;->a([Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.support.v7.preference."

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/f;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter

    .prologue
    .line 369
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 372
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 374
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 375
    :cond_1
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 326
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v1, :cond_4

    :cond_1
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 328
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 332
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 334
    const-string v2, "intent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/preference/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 346
    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Error parsing preference"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 343
    throw v1

    .line 347
    :cond_2
    const-string v2, "extra"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    invoke-virtual {p0}, Landroid/support/v7/preference/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "extra"

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->p()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, p3, v3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 351
    :try_start_1
    invoke-static {p1}, Landroid/support/v7/preference/f;->a(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 352
    :catch_1
    move-exception v0

    .line 353
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Error parsing preference"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 356
    throw v1

    .line 359
    :cond_3
    invoke-direct {p0, v0, p3}, Landroid/support/v7/preference/f;->b(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    move-object v0, p2

    .line 360
    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->c(Landroid/support/v7/preference/Preference;)V

    .line 361
    invoke-direct {p0, p1, v2, p3}, Landroid/support/v7/preference/f;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 365
    :cond_4
    return-void
.end method

.method private b(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 289
    const/4 v0, -0x1

    const/16 v1, 0x2e

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 290
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/f;->a(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 292
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/preference/f;->a(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    throw v0

    .line 300
    :catch_1
    move-exception v0

    .line 301
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Error inflating class (not found)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 305
    throw v1

    .line 307
    :catch_2
    move-exception v0

    .line 308
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 312
    throw v1
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/preference/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method public a(ILandroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/support/v7/preference/f;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 117
    :try_start_0
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/preference/f;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 119
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method protected a(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/v7/preference/f;->f:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/preference/f;->a(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 143
    iget-object v1, p0, Landroid/support/v7/preference/f;->d:[Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 145
    iget-object v0, p0, Landroid/support/v7/preference/f;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/preference/f;->c:Landroid/content/Context;

    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 153
    if-eq v0, v5, :cond_1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 155
    :cond_1
    if-eq v0, v5, :cond_2

    .line 156
    new-instance v0, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": No start tag found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 169
    :catch_0
    move-exception v0

    .line 170
    :try_start_2
    throw v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 161
    :cond_2
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Landroid/support/v7/preference/f;->b(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 164
    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, p2, v0}, Landroid/support/v7/preference/f;->a(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    .line 167
    invoke-direct {p0, p1, v0, v2}, Landroid/support/v7/preference/f;->a(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 183
    :try_start_4
    monitor-exit v1

    return-object v0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 174
    throw v2

    .line 175
    :catch_2
    move-exception v0

    .line 176
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 180
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public a([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Landroid/support/v7/preference/f;->f:[Ljava/lang/String;

    .line 83
    return-void
.end method
