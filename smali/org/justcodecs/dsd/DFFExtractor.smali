.class public Lorg/justcodecs/dsd/DFFExtractor;
.super Ljava/lang/Object;
.source "DFFExtractor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static displayHelp()V
    .locals 3

    .prologue
    .line 106
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 107
    const-string v1, "Usage: [-d <target_directory>] [-n] [-t <nn>] [-f] [-p] <ISO path>%n where: n - no cue,%n        f - overwrite existing files%n        t - extract specified track only (start from 1)%n        p - play specified file instead of extraction"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 108
    return-void
.end method

.method public static extractDff(Ljava/io/File;Ljava/io/File;IZZLorg/justcodecs/dsd/DFFExtractor$Progress;)V
    .locals 20

    .prologue
    .line 118
    const/4 v6, 0x0

    .line 119
    new-instance v13, Lorg/justcodecs/dsd/DISOFormat;

    invoke-direct {v13}, Lorg/justcodecs/dsd/DISOFormat;-><init>()V

    .line 120
    const/4 v4, 0x0

    .line 122
    :try_start_0
    new-instance v2, Lorg/justcodecs/dsd/Utils$RandomDSDStream;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/justcodecs/dsd/Utils$RandomDSDStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v13, v2}, Lorg/justcodecs/dsd/DISOFormat;->init(Lorg/justcodecs/dsd/DSDStream;)V

    .line 123
    const-string v2, "Album"

    invoke-virtual {v13, v2}, Lorg/justcodecs/dsd/DISOFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    if-nez v2, :cond_10

    .line 125
    const-string v2, "Title"

    invoke-virtual {v13, v2}, Lorg/justcodecs/dsd/DISOFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    .line 126
    :goto_0
    if-nez v7, :cond_0

    .line 127
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 128
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 130
    :cond_0
    const-string v2, "Tracks"

    invoke-virtual {v13, v2}, Lorg/justcodecs/dsd/DISOFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/justcodecs/dsd/Scarletbook$TrackInfo;

    .line 131
    new-instance v14, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v7}, Lorg/justcodecs/dsd/DFFExtractor;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".dff"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    const/4 v5, 0x0

    .line 133
    const-wide/16 v10, 0x0

    .line 134
    const-wide/16 v8, 0x0

    .line 135
    if-eqz v2, :cond_e

    .line 136
    const/4 v3, 0x0

    .line 137
    if-lez p2, :cond_f

    .line 138
    add-int/lit8 p2, p2, -0x1

    .line 139
    array-length v12, v2

    move/from16 v0, p2

    if-ge v0, v12, :cond_f

    .line 140
    aget-object v7, v2, p2

    .line 141
    iget v3, v7, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->start:I

    int-to-long v8, v3

    invoke-virtual {v13}, Lorg/justcodecs/dsd/DISOFormat;->getSampleRate()I

    move-result v3

    int-to-long v10, v3

    mul-long/2addr v10, v8

    .line 143
    iget v3, v7, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->duration:I

    add-int/lit8 v3, v3, 0x1

    int-to-long v8, v3

    invoke-virtual {v13}, Lorg/justcodecs/dsd/DISOFormat;->getNumChannels()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    mul-long v8, v8, v16

    invoke-virtual {v13}, Lorg/justcodecs/dsd/DISOFormat;->getSampleRate()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    mul-long v8, v8, v16

    const-wide/16 v16, 0x8

    div-long v8, v8, v16

    .line 144
    const/4 v3, 0x2

    new-array v12, v3, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v3, "title"

    invoke-virtual {v7, v3}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v12, v15

    const/4 v3, 0x1

    const-string v15, "Track %02d"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    add-int/lit8 v18, p2, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v3

    invoke-static {v12}, Lorg/justcodecs/dsd/Utils;->nvl([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v12, v7

    .line 147
    :goto_1
    if-eqz p3, :cond_e

    .line 148
    new-instance v7, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/justcodecs/dsd/DFFExtractor;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".cue"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p4, :cond_2

    .line 150
    new-instance v2, Lorg/justcodecs/dsd/DFFExtractor$ExtractionProblem;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CUE "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " already exists"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/justcodecs/dsd/DFFExtractor$ExtractionProblem;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 218
    :catch_0
    move-exception v2

    move-object v3, v4

    move-object v4, v6

    .line 220
    :goto_2
    :try_start_1
    new-instance v5, Lorg/justcodecs/dsd/DFFExtractor$ExtractionProblem;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lorg/justcodecs/dsd/DFFExtractor$ExtractionProblem;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :catchall_0
    move-exception v2

    move-object v5, v3

    move-object v6, v4

    .line 223
    :goto_3
    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 226
    :goto_4
    if-eqz v5, :cond_1

    .line 228
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 231
    :cond_1
    :goto_5
    invoke-virtual {v13}, Lorg/justcodecs/dsd/DISOFormat;->close()V

    .line 232
    throw v2

    .line 151
    :cond_2
    :try_start_4
    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v15, "UTF-8"

    invoke-direct {v5, v3, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 152
    :try_start_5
    const-string v3, "REM GENRE \"%s\"%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "Genre"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lorg/justcodecs/dsd/DISOFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "NA"

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lorg/justcodecs/dsd/Utils;->nvl([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v4, v15

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 153
    const-string v3, "REM DATE %s%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "Year"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/justcodecs/dsd/DISOFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v15

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 154
    const-string v3, "REM DISCID %s%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v13, Lorg/justcodecs/dsd/DISOFormat;->toc:Lorg/justcodecs/dsd/Scarletbook$TOC;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/justcodecs/dsd/Scarletbook$TOC;->discCatalogNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/justcodecs/dsd/DFFExtractor;->quoteIt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v15

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 155
    const-string v3, "REM TOTAL %02d:%02d%n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v13, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->minutes:B

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    aput-object v16, v4, v15

    const/4 v15, 0x1

    iget-object v0, v13, Lorg/justcodecs/dsd/DISOFormat;->atoc:Lorg/justcodecs/dsd/Scarletbook$AreaTOC;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-byte v0, v0, Lorg/justcodecs/dsd/Scarletbook$AreaTOC;->seconds:B

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    aput-object v16, v4, v15

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 156
    const-string v3, "REM COMMENT \"JustDSD https://github.com/drogatkin/JustDSD\"\r\n"

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 157
    const-string v4, "PERFORMER \"%s\"%n"

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 158
    const-string v3, "Artist"

    invoke-virtual {v13, v3}, Lorg/justcodecs/dsd/DISOFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/justcodecs/dsd/DFFExtractor;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v17, v18

    const/4 v3, 0x1

    const-string v18, "NA"

    aput-object v18, v17, v3

    invoke-static/range {v17 .. v17}, Lorg/justcodecs/dsd/Utils;->nvl([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v15, v16

    .line 157
    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 160
    const-string v4, "TITLE \"%s\"%n"

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 161
    const-string v3, "Title"

    invoke-virtual {v13, v3}, Lorg/justcodecs/dsd/DISOFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/justcodecs/dsd/DFFExtractor;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v17, v18

    const/16 v18, 0x1

    .line 162
    const-string v3, "Album"

    invoke-virtual {v13, v3}, Lorg/justcodecs/dsd/DISOFormat;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/justcodecs/dsd/DFFExtractor;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v17, v18

    const/4 v3, 0x2

    const-string v18, "NA"

    aput-object v18, v17, v3

    .line 161
    invoke-static/range {v17 .. v17}, Lorg/justcodecs/dsd/Utils;->nvl([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v15, v16

    .line 159
    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 163
    const-string v3, "FILE \"%s\" WAVE%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v15

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 164
    if-nez v12, :cond_6

    .line 165
    const/4 v3, 0x0

    move v4, v3

    :goto_6
    array-length v3, v2

    if-lt v4, v3, :cond_3

    .line 187
    :goto_7
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v2, v7

    move-object v3, v5

    .line 190
    :goto_8
    :try_start_6
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p4, :cond_7

    .line 191
    new-instance v2, Lorg/justcodecs/dsd/DFFExtractor$ExtractionProblem;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/justcodecs/dsd/DFFExtractor$ExtractionProblem;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 218
    :catch_1
    move-exception v2

    move-object v4, v6

    goto/16 :goto_2

    .line 166
    :cond_3
    :try_start_7
    const-string v3, "  TRACK %02d AUDIO%n"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    add-int/lit8 v16, v4, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v15

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 167
    const-string v12, "    TITLE \"%s\"%n"

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 168
    aget-object v3, v2, v4

    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/justcodecs/dsd/DFFExtractor;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v17, v18

    const/4 v3, 0x1

    const-string v18, "NA"

    aput-object v18, v17, v3

    invoke-static/range {v17 .. v17}, Lorg/justcodecs/dsd/Utils;->nvl([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v15, v16

    .line 167
    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 169
    aget-object v3, v2, v4

    const-string v12, "performer"

    invoke-virtual {v3, v12}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 170
    const-string v12, "    PERFORMER \"%s\"%n"

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 171
    aget-object v3, v2, v4

    const-string v17, "performer"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/justcodecs/dsd/DFFExtractor;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v16

    .line 170
    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 172
    :cond_4
    iget v3, v13, Lorg/justcodecs/dsd/DISOFormat;->textDuration:I

    if-lez v3, :cond_5

    .line 173
    invoke-virtual {v13}, Lorg/justcodecs/dsd/DISOFormat;->getTimeAdjustment()D

    move-result-wide v16

    aget-object v3, v2, v4

    iget v3, v3, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->start:I

    int-to-double v0, v3

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v3, v0

    .line 174
    const-string v12, "    INDEX 01 %02d:%02d:%02d%n"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    div-int/lit8 v17, v3, 0x3c

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v15, v16

    const/4 v3, 0x2

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v3

    invoke-static {v12, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 165
    :goto_9
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_6

    .line 176
    :cond_5
    const-string v3, "    INDEX 01 %02d:%02d:%02d%n"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v16, v2, v4

    move-object/from16 v0, v16

    iget v0, v0, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->start:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x3c

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x1

    .line 177
    aget-object v16, v2, v4

    move-object/from16 v0, v16

    iget v0, v0, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->start:I

    move/from16 v16, v0

    rem-int/lit8 v16, v16, 0x3c

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v15

    const/4 v15, 0x2

    aget-object v16, v2, v4

    move-object/from16 v0, v16

    iget v0, v0, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->startFrame:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v15

    .line 176
    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    goto :goto_9

    .line 218
    :catch_2
    move-exception v2

    move-object v3, v5

    move-object v4, v6

    goto/16 :goto_2

    .line 180
    :cond_6
    const-string v3, "  TRACK 01 AUDIO%n"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 181
    const-string v4, "    TITLE \"%s\"%n"

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 182
    aget-object v3, v2, p2

    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/justcodecs/dsd/DFFExtractor;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v16, v17

    invoke-static/range {v16 .. v16}, Lorg/justcodecs/dsd/Utils;->nvl([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v12, v15

    .line 181
    invoke-static {v4, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 183
    const-string v3, "    PERFORMER \"%s\"%n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    .line 184
    aget-object v2, v2, p2

    const-string v17, "performer"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lorg/justcodecs/dsd/Scarletbook$TrackInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/justcodecs/dsd/DFFExtractor;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v16

    invoke-static {v15}, Lorg/justcodecs/dsd/Utils;->nvl([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v4, v12

    .line 183
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 185
    const-string v2, "    INDEX 01 00:00:00%n"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_7

    .line 221
    :catchall_1
    move-exception v2

    goto/16 :goto_3

    .line 192
    :cond_7
    :try_start_8
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v14, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 193
    :try_start_9
    invoke-static {v4, v13}, Lorg/justcodecs/dsd/DFFExtractor;->writeDFFHeader(Ljava/io/RandomAccessFile;Lorg/justcodecs/dsd/DISOFormat;)J

    move-result-wide v16

    .line 194
    const-wide/16 v6, 0x0

    .line 195
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lorg/justcodecs/dsd/DISOFormat;->initBuffers(I)V

    .line 196
    invoke-virtual {v13}, Lorg/justcodecs/dsd/DISOFormat;->getSamples()[B

    move-result-object v5

    .line 197
    invoke-virtual {v13, v10, v11}, Lorg/justcodecs/dsd/DISOFormat;->seek(J)V

    .line 198
    if-eqz p5, :cond_8

    .line 199
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_b

    .line 200
    move-object/from16 v0, p5

    invoke-interface {v0, v8, v9, v14, v2}, Lorg/justcodecs/dsd/DFFExtractor$Progress;->init(JLjava/io/File;Ljava/io/File;)V

    .line 211
    :cond_8
    :goto_a
    invoke-virtual {v13}, Lorg/justcodecs/dsd/DISOFormat;->readDataBlock()Z

    move-result v2

    if-nez v2, :cond_c

    .line 213
    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 214
    const-wide/16 v8, 0x4

    invoke-virtual {v4, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 215
    add-long v8, v6, v16

    const-wide/16 v10, 0xc

    sub-long/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 216
    const-wide/16 v8, 0x8

    sub-long v8, v16, v8

    invoke-virtual {v4, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 217
    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 223
    :try_start_a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 226
    :goto_b
    if-eqz v3, :cond_a

    .line 228
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 231
    :cond_a
    :goto_c
    invoke-virtual {v13}, Lorg/justcodecs/dsd/DISOFormat;->close()V

    .line 233
    return-void

    .line 202
    :cond_b
    :try_start_c
    invoke-virtual {v13}, Lorg/justcodecs/dsd/DISOFormat;->getSampleCount()J

    move-result-wide v10

    invoke-virtual {v13}, Lorg/justcodecs/dsd/DISOFormat;->getNumChannels()I

    move-result v12

    int-to-long v0, v12

    move-wide/from16 v18, v0

    mul-long v10, v10, v18

    const-wide/16 v18, 0x8

    div-long v10, v10, v18

    move-object/from16 v0, p5

    invoke-interface {v0, v10, v11, v14, v2}, Lorg/justcodecs/dsd/DFFExtractor$Progress;->init(JLjava/io/File;Ljava/io/File;)V

    goto :goto_a

    .line 218
    :catch_3
    move-exception v2

    goto/16 :goto_2

    .line 205
    :cond_c
    const/4 v2, 0x0

    iget v10, v13, Lorg/justcodecs/dsd/DISOFormat;->bufEnd:I

    invoke-virtual {v4, v5, v2, v10}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 206
    iget v2, v13, Lorg/justcodecs/dsd/DISOFormat;->bufEnd:I

    iput v2, v13, Lorg/justcodecs/dsd/DISOFormat;->bufPos:I

    .line 207
    iget v2, v13, Lorg/justcodecs/dsd/DISOFormat;->bufEnd:I

    int-to-long v10, v2

    add-long/2addr v6, v10

    .line 208
    if-eqz p5, :cond_d

    .line 209
    move-object/from16 v0, p5

    invoke-interface {v0, v6, v7}, Lorg/justcodecs/dsd/DFFExtractor$Progress;->progress(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 210
    :cond_d
    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_8

    cmp-long v2, v6, v8

    if-gez v2, :cond_9

    goto :goto_a

    :catch_4
    move-exception v3

    goto/16 :goto_4

    :catch_5
    move-exception v3

    goto/16 :goto_5

    :catch_6
    move-exception v2

    goto :goto_b

    :catch_7
    move-exception v2

    goto :goto_c

    .line 221
    :catchall_2
    move-exception v2

    move-object v5, v4

    goto/16 :goto_3

    :catchall_3
    move-exception v2

    move-object v5, v3

    goto/16 :goto_3

    :cond_e
    move-object v2, v5

    move-object v3, v4

    goto/16 :goto_8

    :cond_f
    move-object v12, v3

    move-object v3, v7

    goto/16 :goto_1

    :cond_10
    move-object v7, v2

    goto/16 :goto_0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 22
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Java SACD ISO -> DFF extractor/player  (c) 2015 D. Rogatkin%n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 23
    array-length v0, p0

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lorg/justcodecs/dsd/DFFExtractor;->displayHelp()V

    .line 25
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 27
    :cond_0
    const/4 v8, 0x0

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v1, 0x0

    .line 35
    array-length v10, p0

    const/4 v0, 0x0

    move v9, v0

    move v0, v1

    move v1, v2

    move v2, v6

    move-object v6, v7

    :goto_0
    if-lt v9, v10, :cond_2

    move-object v1, v8

    .line 59
    :goto_1
    if-nez v6, :cond_1

    .line 60
    const-string v6, "."

    .line 61
    :cond_1
    if-eqz v0, :cond_a

    .line 63
    :try_start_0
    new-instance v0, Lorg/justcodecs/dsd/Player;

    invoke-direct {v0}, Lorg/justcodecs/dsd/Player;-><init>()V

    invoke-virtual {v0, v1}, Lorg/justcodecs/dsd/Player;->play(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/justcodecs/dsd/Decoder$DecodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_2
    return-void

    .line 35
    :cond_2
    aget-object v7, p0, v9

    .line 36
    const-string v11, "-d"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 37
    const/4 v5, 0x1

    move v12, v5

    move v5, v2

    move v2, v12

    .line 35
    :goto_3
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move v12, v2

    move v2, v5

    move v5, v12

    goto :goto_0

    .line 39
    :cond_3
    if-eqz v5, :cond_4

    .line 41
    const/4 v5, 0x0

    move-object v6, v7

    move v12, v2

    move v2, v5

    move v5, v12

    .line 42
    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 44
    const/4 v1, 0x0

    move v12, v5

    move v5, v2

    move v2, v12

    .line 45
    goto :goto_3

    :cond_5
    const-string v11, "-t"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 46
    const/4 v1, 0x1

    move v12, v5

    move v5, v2

    move v2, v12

    goto :goto_3

    .line 47
    :cond_6
    const-string v11, "-n"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 48
    const/4 v3, 0x0

    move v12, v5

    move v5, v2

    move v2, v12

    goto :goto_3

    .line 49
    :cond_7
    const-string v11, "-f"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 50
    const/4 v4, 0x1

    move v12, v5

    move v5, v2

    move v2, v12

    goto :goto_3

    .line 51
    :cond_8
    const-string v11, "-p"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 52
    const/4 v0, 0x1

    move v12, v5

    move v5, v2

    move v2, v12

    goto :goto_3

    :cond_9
    move-object v1, v7

    .line 55
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Couldn\'t play %s, becasue %s%n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_2

    .line 69
    :cond_a
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "FILE:/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/justcodecs/dsd/DFFExtractor$ExtractionProblem; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_b

    .line 71
    :try_start_2
    new-instance v0, Ljava/net/URL;

    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/justcodecs/dsd/DFFExtractor$ExtractionProblem; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v1, v0

    .line 76
    :cond_b
    :goto_4
    :try_start_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Extracting... %s it may take awhile... "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v0, v5, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 78
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lorg/justcodecs/dsd/b;

    invoke-direct {v5}, Lorg/justcodecs/dsd/b;-><init>()V

    invoke-static/range {v0 .. v5}, Lorg/justcodecs/dsd/DFFExtractor;->extractDff(Ljava/io/File;Ljava/io/File;IZZLorg/justcodecs/dsd/DFFExtractor$Progress;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v8

    .line 98
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 99
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Done in %d:%02d                %n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0x3c

    div-long v6, v0, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x3c

    rem-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;
    :try_end_3
    .catch Lorg/justcodecs/dsd/DFFExtractor$ExtractionProblem; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 100
    :catch_1
    move-exception v0

    .line 101
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Problem %s%n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :sswitch_1
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 238
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private static normalizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 271
    :goto_0
    return-object p0

    .line 258
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    :goto_2
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :sswitch_1
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x22 -> :sswitch_1
    .end sparse-switch
.end method

.method private static quoteIt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 275
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 277
    :goto_0
    return-object p0

    :cond_0
    const-string v0, "\"%s\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lorg/justcodecs/dsd/DFFExtractor;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static writeDFFHeader(Ljava/io/RandomAccessFile;Lorg/justcodecs/dsd/DISOFormat;)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x4

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 293
    const-string v0, "FRM8"

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 295
    const-string v0, "DSD "

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 296
    const-string v0, "FVER"

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 298
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 299
    const-string v0, "PROP"

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 301
    invoke-virtual {p1}, Lorg/justcodecs/dsd/DISOFormat;->getNumChannels()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x42

    .line 302
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 303
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 304
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 305
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 306
    const-string v0, "SND "

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 307
    const-string v0, "FS  "

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 314
    invoke-virtual {p1}, Lorg/justcodecs/dsd/DISOFormat;->getSampleRate()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 325
    :goto_0
    const-string v0, "CHNL"

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Lorg/justcodecs/dsd/DISOFormat;->getNumChannels()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    .line 327
    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 331
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 332
    invoke-virtual {p1}, Lorg/justcodecs/dsd/DISOFormat;->getNumChannels()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 333
    invoke-virtual {p1}, Lorg/justcodecs/dsd/DISOFormat;->getNumChannels()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 344
    :goto_1
    :pswitch_0
    const-string v0, "CMPR"

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 345
    const-wide/16 v0, 0x14

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 346
    const-string v0, "DSD "

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 347
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 348
    const-string v0, "not compressed"

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 350
    const-string v0, "DSD "

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 352
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0

    .line 316
    :sswitch_0
    const v0, 0x2b1100

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_0

    .line 319
    :sswitch_1
    const v0, 0x562200

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_0

    .line 322
    :sswitch_2
    const v0, 0xac4400

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_0

    .line 335
    :pswitch_1
    const-string v0, "SLFTSRGT"

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    goto :goto_1

    .line 338
    :pswitch_2
    const-string v0, "MLFTMRGTC   LS  RS  "

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    goto :goto_1

    .line 341
    :pswitch_3
    const-string v0, "MLFTMRGTC   LFE LS  RS  "

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    goto :goto_1

    .line 314
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b1100 -> :sswitch_0
        0x562200 -> :sswitch_1
        0xac4400 -> :sswitch_2
    .end sparse-switch

    .line 333
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
